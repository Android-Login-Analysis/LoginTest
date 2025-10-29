# 网络混沌测试 (Network Chaos Testing)

## 📖 概述

网络混沌测试功能通过模拟不稳定的网络环境来发现登录过程中的网络相关bug，包括：
- 超时处理缺陷
- 重试逻辑bug
- 竞态条件
- UI冻结/ANR
- 异常处理缺失
- 资源泄漏

## 🎯 可发现的Bug类型

1. **超时处理缺陷**：应用对网络超时的处理不当
2. **重试逻辑bug**：重试次数、重试间隔、重试策略问题
3. **竞态条件**：网络切换时的状态同步问题
4. **UI冻结/ANR**：网络等待时主线程阻塞
5. **数据不一致**：网络中断导致的数据状态不完整
6. **异常处理缺失**：网络异常时的崩溃
7. **资源泄漏**：网络请求失败时的连接/内存泄漏

## ⚙️ 配置说明

在 `src/main/resources/config.properties` 中配置：

```properties
# =============================================================================
# Network Chaos Testing Configuration
# =============================================================================
# Enable network chaos testing during login
network.chaos.enabled=false

# Network state ratio: good:bad (e.g., 40:60 means 40% good network, 60% bad network)
network.good.ratio=40
network.bad.ratio=60

# Network state switch interval in seconds
network.switch.interval=60

# Network chaos mode: random, periodic, adaptive
# - random: randomly switch between good/bad based on ratio
# - periodic: switch every N seconds
# - adaptive: switch based on login progress (more chaos when stuck)
network.chaos.mode=random

# Network disruption methods (comma-separated): disable_data, disable_wifi, slow_network, packet_loss, high_latency
network.disruption.methods=disable_data,slow_network

# Minimum network disruption duration in seconds (when in bad state)
network.disruption.min.duration=10

# Maximum network disruption duration in seconds (when in bad state)
network.disruption.max.duration=30
```

## 📝 配置参数详解

### network.chaos.enabled
- **默认值**: `false`
- **说明**: 是否启用网络混沌测试
- **建议**: 初次使用时设置为`false`，待了解功能后再启用

### network.good.ratio / network.bad.ratio
- **默认值**: `40` / `60`
- **说明**: 好网络和坏网络的比例，40:60表示40%时间网络正常，60%时间网络异常
- **建议**: 
  - 保守测试：70:30 (大部分时间网络正常)
  - 标准测试：40:60 (模拟较差网络环境)
  - 激进测试：20:80 (极端网络条件)

### network.switch.interval
- **默认值**: `60` 秒
- **说明**: 网络状态切换间隔
- **建议**: 
  - 快速切换：30秒 (发现更多瞬时bug)
  - 标准切换：60秒 (平衡测试)
  - 慢速切换：120秒 (模拟长时间网络异常)

### network.chaos.mode
- **可选值**: `random`, `periodic`, `adaptive`
- **默认值**: `random`
- **说明**:
  - `random`: 根据good:bad比例随机切换网络状态
  - `periodic`: 每隔N秒定期切换网络状态
  - `adaptive`: 根据登录进度自适应调整（未来增强）
- **建议**: 
  - 一般使用`random`模式获得最真实的测试效果
  - 需要可复现测试时使用`periodic`模式

### network.disruption.methods
- **可选值**: `disable_data`, `disable_wifi`, `slow_network`, `packet_loss`, `high_latency`
- **默认值**: `disable_data,slow_network`
- **说明**:
  - `disable_data`: 禁用移动数据
  - `disable_wifi`: 禁用WiFi
  - `slow_network`: 模拟慢速网络（增加延迟）
  - `packet_loss`: 模拟丢包（20%丢包率）
  - `high_latency`: 模拟高延迟（500ms延迟）
- **建议**: 
  - 基础测试：`disable_data` (完全断网)
  - 标准测试：`disable_data,slow_network` (断网+慢网)
  - 全面测试：`disable_data,slow_network,packet_loss,high_latency`

### network.disruption.min.duration / network.disruption.max.duration
- **默认值**: `10` / `30` 秒
- **说明**: 网络异常持续时间的最小/最大值，实际持续时间在此范围内随机
- **建议**:
  - 短时异常：5-15秒 (测试快速恢复能力)
  - 中等异常：10-30秒 (标准测试)
  - 长时异常：30-60秒 (测试长时间网络异常处理)

## 💡 使用示例

### 示例1: 基础网络混沌测试（推荐新手）

```properties
network.chaos.enabled=true
network.good.ratio=70
network.bad.ratio=30
network.switch.interval=60
network.chaos.mode=random
network.disruption.methods=disable_data
network.disruption.min.duration=10
network.disruption.max.duration=20
```

**效果**: 70%时间网络正常，30%时间完全断网，每60秒评估一次切换，断网持续10-20秒。

### 示例2: 标准网络混沌测试（推荐）

```properties
network.chaos.enabled=true
network.good.ratio=40
network.bad.ratio=60
network.switch.interval=60
network.chaos.mode=random
network.disruption.methods=disable_data,slow_network
network.disruption.min.duration=10
network.disruption.max.duration=30
```

**效果**: 40%时间网络正常，60%时间网络异常（随机完全断网或慢速网络），更接近真实不稳定网络环境。

### 示例3: 激进网络混沌测试（发现更多bug）

```properties
network.chaos.enabled=true
network.good.ratio=20
network.bad.ratio=80
network.switch.interval=30
network.chaos.mode=random
network.disruption.methods=disable_data,slow_network,packet_loss,high_latency
network.disruption.min.duration=15
network.disruption.max.duration=45
```

**效果**: 80%时间网络异常，30秒快速切换，多种网络故障模式，极端测试条件。

### 示例4: 周期性测试（用于可复现bug）

```properties
network.chaos.enabled=true
network.good.ratio=50
network.bad.ratio=50
network.switch.interval=60
network.chaos.mode=periodic
network.disruption.methods=disable_data
network.disruption.min.duration=20
network.disruption.max.duration=20
```

**效果**: 每60秒规律性切换网络状态，每次断网固定20秒，便于复现bug。

## 🔧 集成到AndroidLoginDetector

在 `AndroidLoginDetector` 类中集成网络混沌管理器：

```java
public class AndroidLoginDetector {
    
    private NetworkChaosManager networkChaosManager;
    
    public AndroidLoginDetector() {
        // ... 其他初始化代码 ...
        
        // 初始化网络混沌管理器
        networkChaosManager = new NetworkChaosManager(configLoader, new NetworkChaosManager.Logger() {
            @Override
            public void logInfo(String message) {
                AndroidLoginDetector.this.logInfo(message);
            }
            
            @Override
            public void logError(String message) {
                AndroidLoginDetector.this.logError(message);
            }
        });
    }
    
    public void runLoginDetectionTest() {
        // 在测试开始时启动网络混沌测试
        networkChaosManager.start();
        
        try {
            // ... 原有的测试逻辑 ...
            
        } finally {
            // 测试结束后停止网络混沌并保存报告
            networkChaosManager.stop();
            networkChaosManager.saveDisruptionReport("reports/network_chaos_report.txt");
        }
    }
}
```

## 📊 报告输出

网络混沌测试会生成详细报告，包含：

1. **配置信息**: 测试模式、比例、间隔等
2. **统计信息**: 好网络/坏网络周期数、实际比例
3. **时间线**: 每次网络状态变化的详细记录

报告示例：
```
================================================================================
Network Chaos Testing Report
================================================================================

Configuration:
  Mode: random
  Good:Bad Ratio: 40:60
  Switch Interval: 60 seconds

Statistics:
  Total good network periods: 12
  Total bad network periods: 18
  Total disruptions: 30
  Actual good:bad ratio: 12:18

Disruption Timeline:
--------------------------------------------------------------------------------
[2025-10-02 10:15:23] GOOD - Network restored to good state (duration: 0s)
[2025-10-02 10:16:43] BAD - Mobile data disabled (duration: 25s)
[2025-10-02 10:17:08] GOOD - Network restored to good state (duration: 0s)
[2025-10-02 10:18:33] BAD - Network slowed down (high latency) (duration: 18s)
...
```

## 🎯 最佳实践

1. **渐进式启用**: 先用基础配置测试，逐步增加复杂度
2. **结合日志分析**: 网络混沌测试期间重点关注应用日志中的网络错误
3. **监控ANR**: 网络问题容易导致ANR，密切关注
4. **多轮测试**: 网络相关bug往往具有随机性，建议多轮测试
5. **对比测试**: 先在正常网络下测试，再启用网络混沌，对比结果

## ⚠️ 注意事项

1. **需要root权限**: 某些网络控制命令需要Android设备/模拟器的root权限
2. **可能影响其他应用**: 网络混沌会影响设备上所有应用的网络连接
3. **测试时间会延长**: 网络异常会导致应用响应变慢，测试时间相应延长
4. **适配性**: 不同Android版本的网络控制命令可能有差异

## 🔍 故障排查

### 问题: 网络混沌未生效
**解决方案**:
1. 检查 `network.chaos.enabled=true`
2. 检查设备/模拟器是否有root权限：`adb shell su -c "id"`
3. 查看日志中是否有网络切换记录

### 问题: ADB命令执行失败
**解决方案**:
1. 确保ADB正常连接：`adb devices`
2. 检查root权限
3. 尝试简化disruption methods，只使用`disable_data`

### 问题: 网络无法恢复
**解决方案**:
1. 手动执行恢复命令：
   ```bash
   adb shell svc data enable
   adb shell svc wifi enable
   ```
2. 重启设备/模拟器

## 📚 技术实现细节

### ADB网络控制命令

- **启用/禁用移动数据**: `adb shell svc data enable/disable`
- **启用/禁用WiFi**: `adb shell svc wifi enable/disable`
- **添加网络延迟**: `adb shell tc qdisc add dev wlan0 root netem delay 500ms`
- **模拟丢包**: `adb shell tc qdisc add dev wlan0 root netem loss 20%`
- **清除规则**: `adb shell iptables -F`

### 架构说明

```
NetworkChaosManager
  ├── Configuration (ConfigLoader)
  ├── Scheduler (ScheduledExecutorService)
  ├── Network State Machine
  │   ├── GOOD → BAD transition
  │   └── BAD → GOOD transition
  ├── Disruption Methods
  │   ├── disable_data
  │   ├── disable_wifi
  │   ├── slow_network
  │   ├── packet_loss
  │   └── high_latency
  └── History Tracking & Reporting
```

## 🚀 未来增强

- [ ] Adaptive模式完整实现（根据登录进度自适应调整）
- [ ] 更细粒度的网络质量控制（不同的延迟和丢包率）
- [ ] 支持特定应用的网络隔离
- [ ] 实时网络质量监控仪表板
- [ ] 与API监控集成，记录网络异常时的API调用情况
