.class Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$1;
.super Ljava/lang/Object;
.source "MediaKeyboard.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->presentCategoryPager(Landroidx/viewpager/widget/PagerAdapter;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$1;->this$0:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$1;->this$0:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->access$000(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;)Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->setActivePosition(I)V

    .line 214
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$1;->this$0:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->access$100(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
