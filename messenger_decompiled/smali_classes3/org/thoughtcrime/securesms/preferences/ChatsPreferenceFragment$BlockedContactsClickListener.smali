.class Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$BlockedContactsClickListener;
.super Ljava/lang/Object;
.source "ChatsPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockedContactsClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$BlockedContactsClickListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$1;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$BlockedContactsClickListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 165
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$BlockedContactsClickListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/thoughtcrime/securesms/BlockedContactsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$BlockedContactsClickListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
