.class public abstract Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;
.super Ljava/lang/Object;
.source "PermissionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mEmbedder:Ljava/lang/String;

.field private final mIsIncognito:Z

.field private final mOrigin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->mOrigin:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->mEmbedder:Ljava/lang/String;

    .line 20
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->mIsIncognito:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->mOrigin:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->getEmbedderSafe()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->mIsIncognito:Z

    invoke-virtual {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->getNativePreferenceValue(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->fromInt(I)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    return-object v0
.end method

.method public getEmbedder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->mEmbedder:Ljava/lang/String;

    return-object v0
.end method

.method public getEmbedderSafe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->mEmbedder:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->mEmbedder:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->mOrigin:Ljava/lang/String;

    goto :goto_0
.end method

.method protected abstract getNativePreferenceValue(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public setContentSetting(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->mOrigin:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->getEmbedderSafe()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->mIsIncognito:Z

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->setNativePreferenceValue(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;Z)V

    .line 52
    return-void
.end method

.method protected abstract setNativePreferenceValue(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;Z)V
.end method
