.class public Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;
.super Ljava/lang/Object;
.source "DcContactsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/connect/DcContactsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ret"
.end annotation


# instance fields
.field public final ids:[I

.field public final query:Ljava/lang/String;

.field final synthetic this$0:Lorg/thoughtcrime/securesms/connect/DcContactsLoader;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/connect/DcContactsLoader;[ILjava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;->this$0:Lorg/thoughtcrime/securesms/connect/DcContactsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;->ids:[I

    .line 70
    iput-object p3, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;->query:Ljava/lang/String;

    return-void
.end method
