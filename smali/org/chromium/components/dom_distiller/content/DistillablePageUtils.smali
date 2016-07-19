.class public final Lorg/chromium/components/dom_distiller/content/DistillablePageUtils;
.super Ljava/lang/Object;
.source "DistillablePageUtils.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static callOnIsPageDistillableResult(Lorg/chromium/components/dom_distiller/content/DistillablePageUtils$PageDistillableCallback;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-interface {p0, p1}, Lorg/chromium/components/dom_distiller/content/DistillablePageUtils$PageDistillableCallback;->onIsPageDistillableResult(Z)V

    .line 32
    return-void
.end method

.method private static callOnIsPageDistillableUpdate(Lorg/chromium/components/dom_distiller/content/DistillablePageUtils$PageDistillableDelegate;ZZ)V
    .locals 0

    .prologue
    .line 57
    invoke-interface {p0, p1, p2}, Lorg/chromium/components/dom_distiller/content/DistillablePageUtils$PageDistillableDelegate;->onIsPageDistillableResult(ZZ)V

    .line 58
    return-void
.end method

.method private static native nativeIsPageDistillable(Lorg/chromium/content_public/browser/WebContents;ZLorg/chromium/components/dom_distiller/content/DistillablePageUtils$PageDistillableCallback;)V
.end method

.method private static native nativeSetDelegate(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/dom_distiller/content/DistillablePageUtils$PageDistillableDelegate;)V
.end method

.method public static setDelegate(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/dom_distiller/content/DistillablePageUtils$PageDistillableDelegate;)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1}, Lorg/chromium/components/dom_distiller/content/DistillablePageUtils;->nativeSetDelegate(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/dom_distiller/content/DistillablePageUtils$PageDistillableDelegate;)V

    .line 52
    return-void
.end method
