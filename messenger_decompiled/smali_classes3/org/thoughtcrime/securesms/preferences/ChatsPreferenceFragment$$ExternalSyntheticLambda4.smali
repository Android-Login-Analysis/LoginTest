.class public final synthetic Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$$ExternalSyntheticLambda4;->f$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$$ExternalSyntheticLambda4;->f$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->lambda$performBackup$4$org-thoughtcrime-securesms-preferences-ChatsPreferenceFragment()V

    return-void
.end method
