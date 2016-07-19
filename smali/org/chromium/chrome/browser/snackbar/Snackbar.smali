.class public Lorg/chromium/chrome/browser/snackbar/Snackbar;
.super Ljava/lang/Object;
.source "Snackbar.java"


# static fields
.field public static final TYPE_ACTION:I = 0x0

.field public static final TYPE_NOTIFICATION:I = 0x1


# instance fields
.field private mActionData:Ljava/lang/Object;

.field private mActionText:Ljava/lang/String;

.field private mBackgroundColor:I

.field private mController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

.field private mDurationMs:I

.field private mProfileImage:Landroid/graphics/Bitmap;

.field private mSingleLine:Z

.field private mTemplateText:Ljava/lang/String;

.field private mText:Ljava/lang/CharSequence;

.field private mType:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mSingleLine:Z

    .line 46
    return-void
.end method

.method public static make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lorg/chromium/chrome/browser/snackbar/Snackbar;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;-><init>()V

    .line 57
    iput-object p0, v0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mText:Ljava/lang/CharSequence;

    .line 58
    iput-object p1, v0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    .line 59
    iput p2, v0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mType:I

    .line 60
    return-object v0
.end method


# virtual methods
.method getActionData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mActionData:Ljava/lang/Object;

    return-object v0
.end method

.method getActionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mActionText:Ljava/lang/String;

    return-object v0
.end method

.method getBackgroundColor()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mBackgroundColor:I

    return v0
.end method

.method getController()Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    return-object v0
.end method

.method getDuration()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mDurationMs:I

    return v0
.end method

.method getProfileImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mProfileImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getSingleLine()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mSingleLine:Z

    return v0
.end method

.method getTemplateText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mTemplateText:Ljava/lang/String;

    return-object v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method isTypeAction()Z
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mActionText:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mActionData:Ljava/lang/Object;

    .line 82
    return-object p0
.end method

.method public setBackgroundColor(I)Lorg/chromium/chrome/browser/snackbar/Snackbar;
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mBackgroundColor:I

    .line 117
    return-object p0
.end method

.method public setDuration(I)Lorg/chromium/chrome/browser/snackbar/Snackbar;
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mDurationMs:I

    .line 109
    return-object p0
.end method

.method public setProfileImage(Landroid/graphics/Bitmap;)Lorg/chromium/chrome/browser/snackbar/Snackbar;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mProfileImage:Landroid/graphics/Bitmap;

    .line 92
    return-object p0
.end method

.method public setSingleLine(Z)Lorg/chromium/chrome/browser/snackbar/Snackbar;
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mSingleLine:Z

    .line 100
    return-object p0
.end method

.method public setTemplateText(Ljava/lang/String;)Lorg/chromium/chrome/browser/snackbar/Snackbar;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/Snackbar;->mTemplateText:Ljava/lang/String;

    .line 69
    return-object p0
.end method
