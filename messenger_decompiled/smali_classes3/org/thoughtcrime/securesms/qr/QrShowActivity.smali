.class public Lorg/thoughtcrime/securesms/qr/QrShowActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "QrShowActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"


# instance fields
.field dcContext:Lcom/b44t/messenger/DcContext;

.field dcEventCenter:Lorg/thoughtcrime/securesms/connect/DcEventCenter;

.field private final dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

.field private final dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

.field fragment:Lorg/thoughtcrime/securesms/qr/QrShowFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 20
    new-instance v0, Lorg/thoughtcrime/securesms/util/DynamicTheme;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    .line 21
    new-instance v0, Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->onCreate(Landroid/app/Activity;)V

    .line 34
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->onCreate(Landroid/app/Activity;)V

    const p1, 0x7f0c001f

    .line 36
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0902af

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/qr/QrShowFragment;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->fragment:Lorg/thoughtcrime/securesms/qr/QrShowFragment;

    .line 39
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 40
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->dcEventCenter:Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    .line 42
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "chat_id"

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    if-eqz p1, :cond_1

    .line 54
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1, p1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcChat;->getName()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f120392

    .line 56
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(I)V

    goto :goto_1

    :cond_1
    const-string p1, "displayname"

    .line 59
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "configured_addr"

    const-string v1, "unknown"

    .line 61
    invoke-static {p0, p1, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f120390

    .line 64
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(I)V

    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 70
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09024e

    .line 71
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090290

    .line 72
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0901b0

    .line 73
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 74
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 99
    :sswitch_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->fragment:Lorg/thoughtcrime/securesms/qr/QrShowFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->withdrawQr()V

    goto :goto_0

    .line 93
    :sswitch_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->fragment:Lorg/thoughtcrime/securesms/qr/QrShowFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->shareInviteURL()V

    goto :goto_0

    .line 96
    :sswitch_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->fragment:Lorg/thoughtcrime/securesms/qr/QrShowFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->copyQrData()V

    goto :goto_0

    .line 90
    :sswitch_3
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :goto_0
    const/4 p1, 0x0

    return p1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f0900ca -> :sswitch_2
        0x7f090330 -> :sswitch_1
        0x7f0903ec -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 80
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->onResume(Landroid/app/Activity;)V

    .line 81
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrShowActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->onResume(Landroid/app/Activity;)V

    return-void
.end method
