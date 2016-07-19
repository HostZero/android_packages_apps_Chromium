.class public Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory;
.super Lorg/chromium/chrome/browser/tab/TabDelegateFactory;
.source "FullScreenDelegateFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public createContextMenuPopulator(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;

    new-instance v1, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;

    invoke-direct {v1, p1}, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;I)V

    return-object v0
.end method

.method public createTopControlsVisibilityDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory$1;-><init>(Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory;Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method

.method public bridge synthetic createWebContentsDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory;->createWebContentsDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory$FullScreenTabWebContentsDelegateAndroid;

    move-result-object v0

    return-object v0
.end method

.method public createWebContentsDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory$FullScreenTabWebContentsDelegateAndroid;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory$FullScreenTabWebContentsDelegateAndroid;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory$FullScreenTabWebContentsDelegateAndroid;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method
