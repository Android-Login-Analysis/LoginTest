.class public final synthetic Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;Landroid/content/Context;JLjava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-wide p3, p0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$$ExternalSyntheticLambda0;->f$3:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-wide v2, p0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$$ExternalSyntheticLambda0;->f$2:J

    iget-object v4, p0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$$ExternalSyntheticLambda0;->f$3:Ljava/io/InputStream;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->lambda$persistToDisk$0$org-thoughtcrime-securesms-providers-PersistentBlobProvider(Landroid/content/Context;JLjava/io/InputStream;)V

    return-void
.end method
