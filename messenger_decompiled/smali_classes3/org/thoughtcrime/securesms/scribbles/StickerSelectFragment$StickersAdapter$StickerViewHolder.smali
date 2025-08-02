.class Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StickerSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StickerViewHolder"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private final image:Landroid/widget/ImageView;

.field final synthetic this$1:Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;Landroid/view/View;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;->this$1:Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;

    .line 144
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090378

    .line 145
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;->image:Landroid/widget/ImageView;

    .line 146
    new-instance p1, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;->fileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 138
    iget-object p0, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;->image:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$new$0$org-thoughtcrime-securesms-scribbles-StickerSelectFragment$StickersAdapter$StickerViewHolder(Landroid/view/View;)V
    .locals 1

    .line 147
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;->getAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_0

    .line 149
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;->this$1:Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;->fileName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->access$300(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
