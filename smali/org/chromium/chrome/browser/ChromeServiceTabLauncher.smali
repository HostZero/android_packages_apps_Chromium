.class public Lorg/chromium/chrome/browser/ChromeServiceTabLauncher;
.super Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;
.source "ChromeServiceTabLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method public launchTab(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;[B)V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {v0, p9}, Lorg/chromium/content_public/browser/LoadUrlParams;->setPostData([B)V

    .line 41
    invoke-virtual {v0, p8}, Lorg/chromium/content_public/browser/LoadUrlParams;->setVerbatimHeaders(Ljava/lang/String;)V

    .line 42
    new-instance v1, Lorg/chromium/content_public/common/Referrer;

    invoke-direct {v1, p6, p7}, Lorg/chromium/content_public/common/Referrer;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setReferrer(Lorg/chromium/content_public/common/Referrer;)V

    .line 44
    new-instance v1, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;Ljava/lang/Integer;)V

    .line 45
    const/16 v0, 0xc8

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->setDocumentStartedBy(I)V

    .line 47
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    invoke-direct {v0, p3}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;-><init>(Z)V

    .line 48
    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->createNewTab(Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;I)V

    .line 50
    return-void
.end method
