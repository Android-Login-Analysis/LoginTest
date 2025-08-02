.class public final synthetic Lorg/thoughtcrime/securesms/components/QuoteView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/QuoteView;->lambda$setQuoteAttachment$2(Lorg/thoughtcrime/securesms/mms/Slide;)Z

    move-result p1

    return p1
.end method
