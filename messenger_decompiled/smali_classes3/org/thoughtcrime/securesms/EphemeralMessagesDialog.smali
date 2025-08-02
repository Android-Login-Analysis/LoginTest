.class public Lorg/thoughtcrime/securesms/EphemeralMessagesDialog;
.super Ljava/lang/Object;
.source "EphemeralMessagesDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$EphemeralMessagesInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EphemeralMessagesDialog"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPreselection(I)I
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-long v0, p0

    .line 88
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 91
    :cond_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 94
    :cond_2
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    cmp-long p0, v0, v4

    if-gez p0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 97
    :cond_3
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_4

    const/4 p0, 0x4

    return p0

    .line 100
    :cond_4
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_5

    const/4 p0, 0x5

    return p0

    .line 103
    :cond_5
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x23

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_6

    const/4 p0, 0x6

    return p0

    :cond_6
    const/4 p0, 0x7

    return p0
.end method

.method static synthetic lambda$show$0([ILandroid/widget/RadioGroup;I)V
    .locals 4

    .line 43
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 45
    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 46
    invoke-virtual {v3}, Landroid/widget/RadioButton;->getId()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 47
    aput v2, p0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$show$1([ILorg/thoughtcrime/securesms/EphemeralMessagesDialog$EphemeralMessagesInterface;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    .line 62
    aget p0, p0, p2

    const-wide/16 p2, 0x1

    packed-switch p0, :pswitch_data_0

    const-wide/16 p2, 0x0

    goto :goto_0

    .line 69
    :pswitch_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x23

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p2

    goto :goto_0

    .line 68
    :pswitch_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x7

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p2

    goto :goto_0

    .line 67
    :pswitch_2
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p2

    goto :goto_0

    .line 66
    :pswitch_3
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p2

    goto :goto_0

    .line 65
    :pswitch_4
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x1e

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p2

    goto :goto_0

    .line 64
    :pswitch_5
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x5

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p2

    goto :goto_0

    .line 63
    :pswitch_6
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p2

    .line 72
    :goto_0
    invoke-interface {p1, p2, p3}, Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$EphemeralMessagesInterface;->onTimeSelected(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$show$2(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "#ephemeralmsgs"

    .line 74
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->openHelp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static show(Landroid/content/Context;ILorg/thoughtcrime/securesms/EphemeralMessagesDialog$EphemeralMessagesInterface;)V
    .locals 11

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {p1}, Lorg/thoughtcrime/securesms/EphemeralMessagesDialog;->getPreselection(I)I

    move-result p1

    .line 26
    filled-new-array {p1}, [I

    move-result-object v1

    const v2, 0x7f0c005e

    const/4 v3, 0x0

    .line 28
    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f09027d

    .line 29
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 30
    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v0, v7

    .line 32
    new-instance v9, Landroid/widget/RadioButton;

    invoke-direct {v9, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {v9, v8}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x1030044

    .line 34
    invoke-static {v9, v8}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 36
    new-instance v8, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v8, v10, v10}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    const/16 v10, 0x8

    .line 37
    invoke-static {p0, v10}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v8, v6, v6, v6, v10}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 38
    invoke-virtual {v9, v8}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {v4, v9}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$$ExternalSyntheticLambda0;-><init>([I)V

    invoke-virtual {v4, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 51
    invoke-virtual {v4, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/RadioGroup;->check(I)V

    const p1, 0x7f0900e1

    .line 53
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120120

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12011f

    .line 57
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120097

    .line 59
    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, p2}, Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$$ExternalSyntheticLambda1;-><init>([ILorg/thoughtcrime/securesms/EphemeralMessagesDialog$EphemeralMessagesInterface;)V

    const p2, 0x7f1202d8

    .line 60
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    const p0, 0x7f1201c5

    .line 74
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
