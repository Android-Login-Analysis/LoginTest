.class public final synthetic Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

.field public final synthetic f$1:Lorg/thoughtcrime/securesms/recipients/Recipient;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;Lorg/thoughtcrime/securesms/recipients/Recipient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem$$ExternalSyntheticLambda0;->f$1:Lorg/thoughtcrime/securesms/recipients/Recipient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem$$ExternalSyntheticLambda0;->f$1:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->lambda$onModified$0$org-thoughtcrime-securesms-contacts-ContactSelectionListItem(Lorg/thoughtcrime/securesms/recipients/Recipient;)V

    return-void
.end method
