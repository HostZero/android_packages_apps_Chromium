.class public Lorg/chromium/chrome/browser/JavaExceptionReporter;
.super Ljava/lang/Object;
.source "JavaExceptionReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private mHandlingException:Z

.field private mParent:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/chromium/chrome/browser/JavaExceptionReporter;->mParent:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 24
    return-void
.end method

.method private static installHandler()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lorg/chromium/chrome/browser/JavaExceptionReporter;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/JavaExceptionReporter;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 41
    return-void
.end method

.method private static native nativeReportJavaException(Ljava/lang/Throwable;)V
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/JavaExceptionReporter;->mHandlingException:Z

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/JavaExceptionReporter;->mHandlingException:Z

    .line 30
    invoke-static {p2}, Lorg/chromium/chrome/browser/JavaExceptionReporter;->nativeReportJavaException(Ljava/lang/Throwable;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/JavaExceptionReporter;->mParent:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/JavaExceptionReporter;->mParent:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 35
    :cond_1
    return-void
.end method
