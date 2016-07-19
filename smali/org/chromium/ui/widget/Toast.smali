.class public Lorg/chromium/ui/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I


# instance fields
.field private mSWLayout:Landroid/view/ViewGroup;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/widget/Toast;)V
    .locals 2

    .prologue
    const/16 v1, 0x15

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    .line 45
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lorg/chromium/ui/widget/Toast;->isHWAccelerationDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Landroid/widget/FrameLayout;

    new-instance v1, Lorg/chromium/ui/widget/Toast$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/ui/widget/Toast$1;-><init>(Lorg/chromium/ui/widget/Toast;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/ui/widget/Toast;->mSWLayout:Landroid/view/ViewGroup;

    .line 61
    invoke-virtual {p2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/widget/Toast;->setView(Landroid/view/View;)V

    .line 63
    :cond_0
    return-void
.end method

.method private static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 161
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 162
    check-cast v0, Landroid/app/Activity;

    .line 169
    :goto_1
    return-object v0

    .line 164
    :cond_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 167
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static isHWAccelerationDisabled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-static {p0}, Lorg/chromium/ui/widget/Toast;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 174
    if-nez v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 180
    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static makeText(Landroid/content/Context;II)Lorg/chromium/ui/widget/Toast;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lorg/chromium/ui/widget/Toast;

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/ui/widget/Toast;-><init>(Landroid/content/Context;Landroid/widget/Toast;)V

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lorg/chromium/ui/widget/Toast;

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/ui/widget/Toast;-><init>(Landroid/content/Context;Landroid/widget/Toast;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 75
    return-void
.end method

.method public setGravity(III)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 126
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 78
    iget-object v0, p0, Lorg/chromium/ui/widget/Toast;->mSWLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/chromium/ui/widget/Toast;->mSWLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lorg/chromium/ui/widget/Toast;->mSWLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 82
    iget-object v0, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    iget-object v1, p0, Lorg/chromium/ui/widget/Toast;->mSWLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    return-void
.end method
