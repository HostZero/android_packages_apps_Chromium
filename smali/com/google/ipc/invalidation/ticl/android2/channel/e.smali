.class public Lcom/google/ipc/invalidation/ticl/android2/channel/e;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a:Landroid/content/Context;

    .line 1043
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 26
    const/4 v0, -0x1

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 29
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/android2/channel/e;
    .locals 1

    .prologue
    .line 1038
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/channel/e;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1050
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ap;->b(Landroid/view/ViewConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1063
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1069
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public e()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1073
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v7/a/a;->a:[I

    const v3, 0x7f010074

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1075
    sget v0, Landroid/support/v7/a/a;->j:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    .line 1076
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1077
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->d()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1079
    const v3, 0x7f0d00d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1082
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1083
    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
