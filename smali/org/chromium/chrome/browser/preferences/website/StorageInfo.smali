.class public Lorg/chromium/chrome/browser/preferences/website/StorageInfo;
.super Ljava/lang/Object;
.source "StorageInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mSize:J

.field private final mType:I


# direct methods
.method constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;->mHost:Ljava/lang/String;

    .line 21
    iput p2, p0, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;->mType:I

    .line 22
    iput-wide p3, p0, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;->mSize:J

    .line 23
    return-void
.end method


# virtual methods
.method public clear(Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge$StorageInfoClearedCallback;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;->mHost:Ljava/lang/String;

    iget v1, p0, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;->mType:I

    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeClearStorageData(Ljava/lang/String;ILjava/lang/Object;)V

    .line 31
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;->mSize:J

    return-wide v0
.end method
