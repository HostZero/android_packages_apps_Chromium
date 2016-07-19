.class final Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;
.super Ljava/lang/Object;
.source "WebsiteSettingsPopup.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final setting:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

.field public final type:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;->name:Ljava/lang/String;

    .line 94
    iput p2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;->type:I

    .line 95
    iput-object p3, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;->setting:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    .line 96
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;->name:Ljava/lang/String;

    return-object v0
.end method
