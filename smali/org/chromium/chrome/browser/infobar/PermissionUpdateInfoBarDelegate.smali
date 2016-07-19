.class Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;
.super Ljava/lang/Object;
.source "PermissionUpdateInfoBarDelegate.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;


# instance fields
.field private mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

.field private final mAndroidPermisisons:[Ljava/lang/String;

.field private mNativePtr:J

.field private final mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method private constructor <init>(JLorg/chromium/content_public/browser/WebContents;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mNativePtr:J

    .line 39
    iput-object p4, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mAndroidPermisisons:[Ljava/lang/String;

    .line 40
    invoke-static {p3}, Lorg/chromium/content/browser/ContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 41
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)Lorg/chromium/base/ApplicationStatus$ActivityStateListener;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;)J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mNativePtr:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;JZ)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->nativeOnPermissionResult(JZ)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->notifyPermissionResult()V

    return-void
.end method

.method private static create(JLorg/chromium/content_public/browser/WebContents;[Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;-><init>(JLorg/chromium/content_public/browser/WebContents;[Ljava/lang/String;)V

    return-object v0
.end method

.method private native nativeOnPermissionResult(JZ)V
.end method

.method private notifyPermissionResult()V
    .locals 6

    .prologue
    .line 102
    const/4 v1, 0x1

    .line 103
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mAndroidPermisisons:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 104
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mAndroidPermisisons:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mNativePtr:J

    invoke-direct {p0, v2, v3, v1}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->nativeOnPermissionResult(JZ)V

    .line 108
    :cond_1
    return-void
.end method

.method private onNativeDestroyed()V
    .locals 2

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mNativePtr:J

    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    .line 50
    :cond_0
    return-void
.end method

.method private requestPermissions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 54
    move v0, v1

    move v2, v3

    .line 55
    :goto_0
    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mAndroidPermisisons:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 56
    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    iget-object v5, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mAndroidPermisisons:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    iget-object v5, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mAndroidPermisisons:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v4, v3

    :goto_1
    and-int/2addr v2, v4

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v4, v1

    .line 56
    goto :goto_1

    .line 61
    :cond_2
    if-eqz v2, :cond_3

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mAndroidPermisisons:[Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    .line 94
    :goto_2
    return-void

    .line 64
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 65
    if-nez v0, :cond_4

    .line 66
    iget-wide v2, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mNativePtr:J

    invoke-direct {p0, v2, v3, v1}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->nativeOnPermissionResult(JZ)V

    goto :goto_2

    .line 70
    :cond_4
    new-instance v1, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate$1;-><init>(Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    .line 86
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    invoke-static {v1, v0}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v3}, Lorg/chromium/ui/base/WindowAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->notifyPermissionResult()V

    .line 99
    return-void
.end method
