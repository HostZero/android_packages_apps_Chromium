.class Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$TabLoadTrackerCallbackImpl;
.super Ljava/lang/Object;
.source "StripLayoutHelper.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;)V
    .locals 0

    .prologue
    .line 1477
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$TabLoadTrackerCallbackImpl;->this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$1;)V
    .locals 0

    .prologue
    .line 1477
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$TabLoadTrackerCallbackImpl;-><init>(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;)V

    return-void
.end method


# virtual methods
.method public loadStateChanged(I)V
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$TabLoadTrackerCallbackImpl;->this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    # getter for: Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->access$500(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;)Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    .line 1481
    return-void
.end method
