.class public final synthetic Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    iput p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda4;->f$1:I

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->lambda$onBindViewHolder$4$org-thoughtcrime-securesms-ProfileSettingsAdapter(ILandroid/view/View;)V

    return-void
.end method
