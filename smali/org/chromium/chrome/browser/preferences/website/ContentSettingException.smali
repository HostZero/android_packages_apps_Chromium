.class public Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;
.super Ljava/lang/Object;
.source "ContentSettingException.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mContentSetting:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

.field private final mContentSettingType:I

.field private final mPattern:Ljava/lang/String;

.field private final mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->mContentSettingType:I

    .line 32
    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->mPattern:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->mContentSetting:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    .line 34
    iput-object p4, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->mSource:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->mContentSetting:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public setContentSetting(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->mContentSettingType:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->mPattern:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->toInt()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetContentSettingForPattern(ILjava/lang/String;I)V

    .line 55
    return-void
.end method
