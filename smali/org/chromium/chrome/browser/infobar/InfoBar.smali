.class public abstract Lorg/chromium/chrome/browser/infobar/InfoBar;
.super Ljava/lang/Object;
.source "InfoBar.java"

# interfaces
.implements Lorg/chromium/chrome/browser/infobar/InfoBarView;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

.field private mContext:Landroid/content/Context;

.field private mControlsEnabled:Z

.field private final mIconBitmap:Landroid/graphics/Bitmap;

.field private final mIconDrawableId:I

.field private mIsDismissed:Z

.field private final mMessage:Ljava/lang/CharSequence;

.field private mNativeInfoBarPtr:J

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lorg/chromium/chrome/browser/infobar/InfoBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBar;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mControlsEnabled:Z

    .line 42
    iput p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mIconDrawableId:I

    .line 43
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 44
    iput-object p3, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mMessage:Ljava/lang/CharSequence;

    .line 45
    return-void
.end method

.method private closeInfoBar()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 122
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mIsDismissed:Z

    if-nez v1, :cond_1

    .line 123
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mIsDismissed:Z

    .line 124
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->hasBeenDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-virtual {v1, p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->removeInfoBar(Lorg/chromium/chrome/browser/infobar/InfoBar;)V

    .line 130
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeOnButtonClicked(JI)V
.end method

.method private native nativeOnCloseButtonClicked(J)V
.end method

.method private native nativeOnLinkClicked(J)V
.end method

.method private setNativeInfoBar(J)V
    .locals 5

    .prologue
    .line 53
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mNativeInfoBarPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    iput-wide p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mNativeInfoBarPtr:J

    .line 55
    return-void
.end method


# virtual methods
.method public areControlsEnabled()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mControlsEnabled:Z

    return v0
.end method

.method public createContent(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method protected final createView()Landroid/view/View;
    .locals 6

    .prologue
    .line 82
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mContext:Landroid/content/Context;

    iget v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mIconDrawableId:I

    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mMessage:Ljava/lang/CharSequence;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/infobar/InfoBarView;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->createContent(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V

    .line 87
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->onContentCreated()V

    .line 88
    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mView:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getAccessibilityText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 114
    :goto_0
    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mView:Landroid/view/View;

    sget v1, Lorg/chromium/chrome/R$id;->infobar_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    .line 114
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mContext:Landroid/content/Context;

    sget v2, Lorg/chromium/chrome/R$string;->infobar_screen_position:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected onButtonClicked(I)V
    .locals 4

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mNativeInfoBarPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mNativeInfoBarPtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/infobar/InfoBar;->nativeOnButtonClicked(JI)V

    .line 162
    :cond_0
    return-void
.end method

.method public onButtonClicked(Z)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onCloseButtonClicked()V
    .locals 4

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mNativeInfoBarPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mNativeInfoBarPtr:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBar;->nativeOnCloseButtonClicked(J)V

    .line 167
    :cond_0
    return-void
.end method

.method public onLinkClicked()V
    .locals 4

    .prologue
    .line 153
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mNativeInfoBarPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mNativeInfoBarPtr:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBar;->nativeOnLinkClicked(J)V

    .line 154
    :cond_0
    return-void
.end method

.method protected onNativeDestroyed()V
    .locals 2

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mNativeInfoBarPtr:J

    .line 60
    return-void
.end method

.method protected replaceView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 97
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mView:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->notifyInfoBarViewChanged()V

    .line 99
    return-void
.end method

.method protected setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public setControlsEnabled(Z)V
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mControlsEnabled:Z

    .line 145
    return-void
.end method

.method setInfoBarContainer(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->mContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 135
    return-void
.end method
