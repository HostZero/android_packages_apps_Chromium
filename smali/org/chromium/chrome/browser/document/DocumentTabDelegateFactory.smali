.class public Lorg/chromium/chrome/browser/document/DocumentTabDelegateFactory;
.super Lorg/chromium/chrome/browser/tab/TabDelegateFactory;
.source "DocumentTabDelegateFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public createWebContentsDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lorg/chromium/chrome/browser/document/DocumentTabDelegateFactory$DocumentTabWebContentsDelegateAndroid;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/document/DocumentTabDelegateFactory$DocumentTabWebContentsDelegateAndroid;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method
