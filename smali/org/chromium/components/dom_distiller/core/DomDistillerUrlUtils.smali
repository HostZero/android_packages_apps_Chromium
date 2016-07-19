.class public final Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;
.super Ljava/lang/Object;
.source "DomDistillerUrlUtils.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getDistillerViewUrlFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p0, p1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->nativeGetDistillerViewUrlFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getOriginalUrlFromDistillerUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->nativeGetOriginalUrlFromDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getValueForKeyInUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->nativeGetValueForKeyInUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isDistilledPage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->nativeIsDistilledPage(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static native nativeGetDistillerViewUrlFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetIsDistillableJs()Ljava/lang/String;
.end method

.method private static native nativeGetOriginalUrlFromDistillerUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetValueForKeyInUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeIsDistilledPage(Ljava/lang/String;)Z
.end method

.method private static native nativeIsUrlDistillable(Ljava/lang/String;)Z
.end method
