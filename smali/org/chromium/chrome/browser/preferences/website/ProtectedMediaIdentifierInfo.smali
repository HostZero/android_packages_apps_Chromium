.class public Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;
.super Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;
.source "ProtectedMediaIdentifierInfo.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    return-void
.end method


# virtual methods
.method protected getNativePreferenceValue(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    .prologue
    .line 18
    invoke-static {p1, p2, p3}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeGetProtectedMediaIdentifierSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method protected setNativePreferenceValue(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;Z)V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->toInt()I

    move-result v0

    invoke-static {p1, p2, v0, p4}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeSetProtectedMediaIdentifierSettingForOrigin(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 27
    return-void
.end method
