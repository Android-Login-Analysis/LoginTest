.class public Lorg/thoughtcrime/securesms/util/Prefs;
.super Ljava/lang/Object;
.source "Prefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;
    }
.end annotation


# static fields
.field public static final ALWAYS_LOAD_REMOTE_CONTENT:Ljava/lang/String; = "pref_always_load_remote_content"

.field public static final ALWAYS_LOAD_REMOTE_CONTENT_DEFAULT:Z = false

.field public static final ASKED_FOR_NOTIFICATION_PERMISSION:Ljava/lang/String; = "pref_asked_for_notification_permission"

.field public static final BACKGROUND_PREF:Ljava/lang/String; = "pref_chat_background"

.field public static final BUILTIN_CAMERA_PREF:Ljava/lang/String; = "pref_builtin_camera"

.field private static final CHAT_RINGTONE:Ljava/lang/String; = "pref_chat_ringtone_"

.field private static final CHAT_VIBRATE:Ljava/lang/String; = "pref_chat_vibrate_"

.field private static final DATABASE_ENCRYPTED_SECRET:Ljava/lang/String; = "pref_database_encrypted_secret_"

.field private static final DATABASE_UNENCRYPTED_SECRET:Ljava/lang/String; = "pref_database_unencrypted_secret_"

.field public static final DIRECT_CAPTURE_CAMERA_ID:Ljava/lang/String; = "pref_direct_capture_camera_id"

.field public static final DISABLE_PASSPHRASE_PREF:Ljava/lang/String; = "pref_disable_passphrase"

.field public static final DOZE_ASKED_DIRECTLY:Ljava/lang/String; = "pref_doze_asked_directly"

.field private static final ENTER_SENDS_PREF:Ljava/lang/String; = "pref_enter_sends"

.field public static final INCOGNITO_KEYBORAD_PREF:Ljava/lang/String; = "pref_incognito_keyboard"

.field private static final IN_THREAD_NOTIFICATION_PREF:Ljava/lang/String; = "pref_key_inthread_notifications"

.field public static final LANGUAGE_PREF:Ljava/lang/String; = "pref_language"

.field public static final LAST_DEVICE_MSG_LABEL:Ljava/lang/String; = "pref_last_device_msg_id"

.field public static final LED_COLOR_PREF:Ljava/lang/String; = "pref_led_color"

.field public static final MESSAGE_BODY_TEXT_SIZE_PREF:Ljava/lang/String; = "pref_message_body_text_size"

.field private static final NOTIFICATION_PREF:Ljava/lang/String; = "pref_key_enable_notifications"

.field public static final NOTIFICATION_PRIORITY_PREF:Ljava/lang/String; = "pref_notification_priority"

.field public static final NOTIFICATION_PRIVACY_PREF:Ljava/lang/String; = "pref_notification_privacy"

.field private static final PREF_CONTACT_PHOTO_IDENTIFIERS:Ljava/lang/String; = "pref_contact_photo_identifiers"

.field private static final PROFILE_AVATAR_ID_PREF:Ljava/lang/String; = "pref_profile_avatar_id"

.field private static final PROMPTED_DOZE_MSG_ID_PREF:Ljava/lang/String; = "pref_prompted_doze_msg_id"

.field public static final RINGTONE_PREF:Ljava/lang/String; = "pref_key_ringtone"

.field public static final SCREEN_SECURITY_PREF:Ljava/lang/String; = "pref_screen_security"

.field public static final SYSTEM_EMOJI_PREF:Ljava/lang/String; = "pref_system_emoji"

.field private static final TAG:Ljava/lang/String; = "Prefs"

.field public static final THEME_PREF:Ljava/lang/String; = "pref_theme"

.field private static final VIBRATE_PREF:Ljava/lang/String; = "pref_key_vibrate"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlwaysLoadRemoteContent(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_always_load_remote_content"

    const/4 v1, 0x0

    .line 291
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBackgroundImagePath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pref_chat_background"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 302
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getChatRingtone(Landroid/content/Context;II)Landroid/net/Uri;
    .locals 2

    const-string v0, "pref_chat_ringtone_"

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 p1, 0x0

    .line 232
    invoke-static {p0, v0, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static getChatVibrate(Landroid/content/Context;II)Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;
    .locals 2

    const-string v0, "pref_chat_vibrate_"

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_0
    sget-object p1, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->DEFAULT:Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->getId()I

    move-result p1

    invoke-static {p0, v0, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->getIntegerPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->fromId(I)Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    move-result-object p0

    return-object p0
.end method

.method public static getDatabaseEncryptedSecret(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pref_database_encrypted_secret_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDatabaseUnencryptedSecret(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pref_database_unencrypted_secret_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDirectCaptureCameraId(Landroid/content/Context;)I
    .locals 2

    const-string v0, "pref_direct_capture_camera_id"

    const/4 v1, 0x1

    .line 120
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getIntegerPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getIntegerPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 314
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "pref_language"

    const-string/jumbo v1, "zz"

    .line 156
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLongPreference(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    .line 322
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getMessageBodyTextSize(Landroid/content/Context;)I
    .locals 2

    const-string v0, "pref_message_body_text_size"

    const-string v1, "16"

    .line 111
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getNotificationLedColor(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "pref_led_color"

    const-string v1, "blue"

    .line 269
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNotificationPriority(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x1

    .line 107
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_notification_priority"

    invoke-static {p0, v1, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getNotificationPrivacy(Landroid/content/Context;)Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;
    .locals 3

    .line 124
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;

    const-string v1, "pref_notification_privacy"

    const-string v2, "all"

    invoke-static {p0, v1, v2}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNotificationRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 203
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_key_ringtone"

    invoke-static {p0, v1, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "file:"

    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-object p0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 209
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getProfileAvatarId(Landroid/content/Context;)I
    .locals 2

    const-string v0, "pref_profile_avatar_id"

    const/4 v1, 0x0

    .line 103
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getIntegerPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPrompteDozeMsgId(Landroid/content/Context;)I
    .locals 2

    const-string v0, "pref_prompted_doze_msg_id"

    const/4 v1, 0x0

    .line 168
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getIntegerPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 310
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getStringSetPreference(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 334
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 335
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static getSystemContactPhoto(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "pref_contact_photo_identifiers"

    invoke-static {p0, v2, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringSetPreference(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "\\|"

    .line 350
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    .line 351
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 352
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTheme(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 152
    invoke-static {}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->systemThemeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "system"

    goto :goto_0

    :cond_0
    const-string v0, "light"

    :goto_0
    const-string v1, "pref_theme"

    invoke-static {p0, v1, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isBuiltInCameraPreferred(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_builtin_camera"

    const/4 v1, 0x0

    .line 287
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isDeveloperModeEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_developer_mode_enabled"

    const/4 v1, 0x0

    .line 193
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isEnterSendsEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_enter_sends"

    const/4 v1, 0x0

    .line 136
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isHardCompressionEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 180
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p0

    const-string v0, "media_quality"

    invoke-virtual {p0, v0}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInChatNotifications(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_key_inthread_notifications"

    const/4 v1, 0x1

    .line 128
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isIncognitoKeyboardEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_incognito_keyboard"

    const/4 v1, 0x0

    .line 95
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isLocationStreamingEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "pref_location_streaming_enabled"

    .line 185
    invoke-static {p0, v1, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static isNewBroadcastListAvailable(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_new_broadcast_list"

    const/4 v1, 0x0

    .line 197
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isNotificationVibrateEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_key_vibrate"

    const/4 v1, 0x1

    .line 248
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isNotificationsEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_key_enable_notifications"

    const/4 v1, 0x1

    .line 172
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isPasswordDisabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_disable_passphrase"

    const/4 v1, 0x0

    .line 140
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isPushEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isScreenSecurityEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_screen_security"

    const/4 v1, 0x0

    .line 148
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isSystemEmojiPreferred(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_system_emoji"

    const/4 v1, 0x0

    .line 283
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static reliableService(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "pref_reliable_service"

    .line 238
    invoke-static {p0, v1, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static removeNotificationRingtone(Landroid/content/Context;)V
    .locals 1

    const-string v0, "pref_key_ringtone"

    .line 213
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static removePreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 330
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setBackgroundImagePath(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pref_chat_background"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/thoughtcrime/securesms/util/Prefs;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 298
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setChatRingtone(Landroid/content/Context;IILandroid/net/Uri;)V
    .locals 2

    const-string v0, "pref_chat_ringtone_"

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p3, :cond_1

    .line 223
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setChatVibrate(Landroid/content/Context;IILorg/thoughtcrime/securesms/util/Prefs$VibrateState;)V
    .locals 2

    const-string v0, "pref_chat_vibrate_"

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_0
    sget-object p1, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->DEFAULT:Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    if-eq p3, p1, :cond_1

    .line 254
    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->getId()I

    move-result p1

    invoke-static {p0, v0, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setIntegerPrefrence(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 257
    :cond_1
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setDatabaseEncryptedSecret(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pref_database_encrypted_secret_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDatabaseUnencryptedSecret(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pref_database_unencrypted_secret_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDirectCaptureCameraId(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "pref_direct_capture_camera_id"

    .line 115
    invoke-static {p0, v0, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setIntegerPrefrence(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setEnterSendsEnabled(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "pref_enter_sends"

    .line 132
    invoke-static {p0, v0, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static setIntegerPrefrence(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 318
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_language"

    .line 160
    invoke-static {p0, v0, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setLongPreference(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 326
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setNotificationRingtone(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "pref_key_ringtone"

    .line 217
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setProfileAvatarId(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "pref_profile_avatar_id"

    .line 99
    invoke-static {p0, v0, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setIntegerPrefrence(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setPromptedDozeMsgId(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "pref_prompted_doze_msg_id"

    .line 164
    invoke-static {p0, v0, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setIntegerPrefrence(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setScreenSecurityEnabled(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "pref_screen_security"

    .line 144
    invoke-static {p0, v0, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 306
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSystemContactPhotos(Landroid/content/Context;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 343
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_contact_photo_identifiers"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
