.class public final synthetic Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda3;->f$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;

    iput p2, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda3;->f$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;

    iget v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda3;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->lambda$onPreferenceChange$3$org-thoughtcrime-securesms-preferences-ChatsPreferenceFragment$AutodelChangeListener(ILandroid/content/DialogInterface;I)V

    return-void
.end method
