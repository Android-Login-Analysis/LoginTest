.class Lorg/thoughtcrime/securesms/ContactSelectionListFragment$2;
.super Landroid/os/AsyncTask;
.source "ContactSelectionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->handleContactPermissionGranted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$2;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 307
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 311
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$2;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$700(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V

    const/4 p1, 0x0

    return-object p1
.end method
