.class public Lorg/chromium/chrome/browser/offlinepages/ClientId;
.super Ljava/lang/Object;
.source "ClientId.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/ClientId;->mNamespace:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lorg/chromium/chrome/browser/offlinepages/ClientId;->mId:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static createClientIdForBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/offlinepages/ClientId;
    .locals 3

    .prologue
    .line 49
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/ClientId;

    const-string/jumbo v1, "bookmark"

    invoke-virtual {p0}, Lorg/chromium/components/bookmarks/BookmarkId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/offlinepages/ClientId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 31
    instance-of v1, p1, Lorg/chromium/chrome/browser/offlinepages/ClientId;

    if-eqz v1, :cond_0

    .line 32
    check-cast p1, Lorg/chromium/chrome/browser/offlinepages/ClientId;

    .line 33
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/offlinepages/ClientId;->getNamespace()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/offlinepages/ClientId;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/offlinepages/ClientId;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/offlinepages/ClientId;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 35
    :cond_0
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/ClientId;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/ClientId;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/chromium/chrome/browser/offlinepages/ClientId;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/offlinepages/ClientId;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
