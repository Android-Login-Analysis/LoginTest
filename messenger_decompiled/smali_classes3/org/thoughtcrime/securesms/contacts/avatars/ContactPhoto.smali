.class public interface abstract Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;
.super Ljava/lang/Object;
.source "ContactPhoto.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# virtual methods
.method public abstract getUri(Landroid/content/Context;)Landroid/net/Uri;
.end method

.method public abstract isProfilePhoto()Z
.end method

.method public abstract openInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
