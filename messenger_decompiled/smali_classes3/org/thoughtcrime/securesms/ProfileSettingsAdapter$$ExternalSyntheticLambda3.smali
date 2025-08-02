.class public final synthetic Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda3;->f$0:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda3;->f$0:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->lambda$onBindViewHolder$3$org-thoughtcrime-securesms-ProfileSettingsAdapter(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
