.class public Lorg/chromium/base/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sApplicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/chromium/base/ContextUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/ContextUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lorg/chromium/base/ContextUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_0
    sget-object v0, Lorg/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static initApplicationContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lorg/chromium/base/ContextUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_0
    sget-boolean v0, Lorg/chromium/base/ContextUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    if-eq v0, p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/ContextUtils;->initJavaSideApplicationContext(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lorg/chromium/base/ContextUtils;->nativeInitNativeSideApplicationContext(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private static initJavaSideApplicationContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 60
    sput-object p0, Lorg/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private static native nativeInitNativeSideApplicationContext(Landroid/content/Context;)V
.end method
