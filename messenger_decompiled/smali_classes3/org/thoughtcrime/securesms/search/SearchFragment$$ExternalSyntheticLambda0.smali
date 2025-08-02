.class public final synthetic Lorg/thoughtcrime/securesms/search/SearchFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/search/SearchFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/search/SearchFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/search/SearchFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchFragment$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/search/SearchFragment;

    check-cast p1, Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/search/SearchFragment;->lambda$onStart$0$org-thoughtcrime-securesms-search-SearchFragment(Lorg/thoughtcrime/securesms/search/model/SearchResult;)V

    return-void
.end method
