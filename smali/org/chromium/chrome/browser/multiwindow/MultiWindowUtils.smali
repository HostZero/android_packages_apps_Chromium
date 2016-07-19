.class public Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;
.super Ljava/lang/Object;
.source "MultiWindowUtils.java"


# static fields
.field private static sInstance:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    .line 37
    sget-object v1, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->createMultiWindowUtils()Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;

    return-object v0
.end method


# virtual methods
.method public isLegacyMultiWindow(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiWindow(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public makeMultiInstanceIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 77
    instance-of v0, p1, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->isLegacyMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-class v0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-class v0, Lorg/chromium/chrome/browser/multiwindow/MultiInstanceChromeTabbedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, -0x10080001

    and-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    :cond_1
    return-void
.end method

.method public shouldRunInMultiInstanceMode(Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;)Z
    .locals 2

    .prologue
    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->isLegacyMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->isChromeBrowserActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
