.class public Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;
.super Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;
.source "KeygenInfo.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    return-void
.end method


# virtual methods
.method protected getNativePreferenceValue(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    .prologue
    .line 16
    invoke-static {p1, p2, p3}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeGetKeygenSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method protected setNativePreferenceValue(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;Z)V
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->toInt()I

    move-result v0

    invoke-static {p1, p2, v0, p4}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeSetKeygenSettingForOrigin(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 24
    return-void
.end method
