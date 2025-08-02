.class Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$ReadReceiptToggleListener;
.super Ljava/lang/Object;
.source "ChatsPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadReceiptToggleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$ReadReceiptToggleListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$1;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$ReadReceiptToggleListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 174
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 175
    iget-object p2, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$ReadReceiptToggleListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    iget-object p2, p2, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v0, "mdns_enabled"

    invoke-virtual {p2, v0, p1}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method
