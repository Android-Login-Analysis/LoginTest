.class public final synthetic Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;

.field public final synthetic f$1:Landroid/widget/CheckBox;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroidx/preference/Preference;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;Landroid/widget/CheckBox;ILandroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda0;->f$1:Landroid/widget/CheckBox;

    iput p3, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda0;->f$3:Landroidx/preference/Preference;

    iput-object p5, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda0;->f$1:Landroid/widget/CheckBox;

    iget v2, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda0;->f$3:Landroidx/preference/Preference;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->lambda$onPreferenceChange$0$org-thoughtcrime-securesms-preferences-ChatsPreferenceFragment$AutodelChangeListener(Landroid/widget/CheckBox;ILandroidx/preference/Preference;Ljava/lang/Object;Landroid/content/DialogInterface;I)V

    return-void
.end method
