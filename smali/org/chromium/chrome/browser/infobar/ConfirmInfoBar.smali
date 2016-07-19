.class public Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.super Lorg/chromium/chrome/browser/infobar/InfoBar;
.source "ConfirmInfoBar.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

.field private final mLinkText:Ljava/lang/String;

.field private final mPrimaryButtonText:Ljava/lang/String;

.field private final mSecondaryButtonText:Ljava/lang/String;

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/InfoBar;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 53
    iput-object p5, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mPrimaryButtonText:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mSecondaryButtonText:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mLinkText:Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->getDeniedPermissionResourceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;)Lorg/chromium/ui/base/WindowAndroid;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->requestAndroidPermissions()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->onButtonClickedInternal(Z)V

    return-void
.end method

.method private static create(Lorg/chromium/ui/base/WindowAndroid;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
    .locals 7

    .prologue
    .line 235
    invoke-static {p1}, Lorg/chromium/chrome/browser/ResourceId;->mapToDrawableId(I)I

    move-result v1

    .line 237
    new-instance v0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p0, p7}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->setContentSettings(Lorg/chromium/ui/base/WindowAndroid;[I)V

    .line 241
    return-object v0
.end method

.method private generatePermissionsMapping([I)Landroid/util/SparseArray;
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 102
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 103
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 104
    aget v3, p1, v0

    invoke-static {v3}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getAndroidPermissionForContentSetting(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    if-eqz v3, :cond_0

    .line 107
    invoke-static {v1, v3}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    aget v4, p1, v0

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    return-object v2
.end method

.method private getDeniedPermissionResourceId(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 116
    move v1, v0

    .line 119
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 120
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x5

    if-ne v1, v0, :cond_2

    .line 126
    sget v0, Lorg/chromium/chrome/R$string;->infobar_missing_location_permission_text:I

    .line 135
    :goto_1
    return v0

    .line 128
    :cond_2
    const/16 v0, 0xb

    if-ne v1, v0, :cond_3

    .line 129
    sget v0, Lorg/chromium/chrome/R$string;->infobar_missing_microphone_permission_text:I

    goto :goto_1

    .line 131
    :cond_3
    const/16 v0, 0xc

    if-ne v1, v0, :cond_4

    .line 132
    sget v0, Lorg/chromium/chrome/R$string;->infobar_missing_camera_permission_text:I

    goto :goto_1

    .line 134
    :cond_4
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected content setting type received: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 135
    :cond_5
    sget v0, Lorg/chromium/chrome/R$string;->infobar_missing_multiple_permissions_text:I

    goto :goto_1
.end method

.method private static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onButtonClickedInternal(Z)V
    .locals 1

    .prologue
    .line 213
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 214
    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->onButtonClicked(I)V

    .line 215
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private requestAndroidPermissions()V
    .locals 4

    .prologue
    .line 151
    new-instance v2, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;-><init>(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;)V

    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 206
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0, v3, v2}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    .line 210
    return-void
.end method


# virtual methods
.method public createContent(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mPrimaryButtonText:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mSecondaryButtonText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->setButtons(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mLinkText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mLinkText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setMessageLinkText(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public onButtonClicked(Z)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->onButtonClickedInternal(Z)V

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->requestAndroidPermissions()V

    goto :goto_0
.end method

.method protected setButtons(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setButtons(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method protected setContentSettings(Lorg/chromium/ui/base/WindowAndroid;[I)V
    .locals 2

    .prologue
    .line 68
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 70
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "A WindowAndroid must be specified to request access to content settings"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 72
    :cond_0
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->generatePermissionsMapping([I)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mContentSettingsToPermissionsMap:Landroid/util/SparseArray;

    .line 73
    return-void
.end method
