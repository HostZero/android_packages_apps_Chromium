.class public Lorg/chromium/content/browser/input/FloatingPastePopupMenu;
.super Ljava/lang/Object;
.source "FloatingPastePopupMenu.java"

# interfaces
.implements Lorg/chromium/content/browser/input/PastePopupMenu;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

.field private mActionMode:Landroid/view/ActionMode;

.field private final mContentRectOffset:I

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

.field private mFallbackPastePopupMenu:Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

.field private final mParent:Landroid/view/View;

.field private mRawPositionX:I

.field private mRawPositionY:I

.field private final mSlopLengthSquared:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-boolean v0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mParent:Landroid/view/View;

    .line 53
    iput-object p2, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mDelegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mContext:Landroid/content/Context;

    .line 56
    const/high16 v0, 0x41700000    # 15.0f

    iget-object v1, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mContentRectOffset:I

    .line 58
    const/high16 v0, 0x41200000    # 10.0f

    iget-object v1, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 60
    mul-int/2addr v0, v0

    iput v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mSlopLengthSquared:I

    .line 61
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mDelegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    return-object v0
.end method

.method static synthetic access$102(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mRawPositionX:I

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mContentRectOffset:I

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mRawPositionY:I

    return v0
.end method

.method private ensureActionModeOrFallback()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 106
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mFallbackPastePopupMenu:Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lorg/chromium/content/browser/FloatingWebActionModeCallback;

    new-instance v1, Lorg/chromium/content/browser/WebActionModeCallback;

    iget-object v2, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->getActionHandler()Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/chromium/content/browser/WebActionModeCallback;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;)V

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/FloatingWebActionModeCallback;-><init>(Lorg/chromium/content/browser/WebActionModeCallback;)V

    .line 111
    iget-object v1, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mParent:Landroid/view/View;

    invoke-virtual {v1, v0, v4}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    sget-boolean v1, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/ActionMode;->getType()I

    move-result v1

    if-eq v1, v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_2
    iput-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 116
    :cond_3
    new-instance v0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

    iget-object v1, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mParent:Landroid/view/View;

    iget-object v2, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mDelegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    invoke-direct {v0, v1, v2}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;-><init>(Landroid/view/View;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mFallbackPastePopupMenu:Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

    .line 117
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mFallbackPastePopupMenu:Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

    iget v1, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mRawPositionX:I

    iget v2, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mRawPositionY:I

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->show(II)V

    goto :goto_0
.end method

.method private getActionHandler()Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    .line 186
    :goto_0
    return-object v0

    .line 123
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;-><init>(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    .line 186
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mFallbackPastePopupMenu:Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mFallbackPastePopupMenu:Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->hide()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mFallbackPastePopupMenu:Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mFallbackPastePopupMenu:Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->isShowing()Z

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(II)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mFallbackPastePopupMenu:Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mFallbackPastePopupMenu:Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->show(II)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mRawPositionX:I

    sub-int/2addr v0, p1

    .line 72
    iget v1, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mRawPositionY:I

    sub-int/2addr v1, p2

    .line 73
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mSlopLengthSquared:I

    if-lt v0, v1, :cond_0

    .line 76
    :cond_2
    iput p1, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mRawPositionX:I

    .line 77
    iput p2, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mRawPositionY:I

    .line 78
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_0

    .line 83
    :cond_3
    invoke-direct {p0}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->ensureActionModeOrFallback()V

    goto :goto_0
.end method
