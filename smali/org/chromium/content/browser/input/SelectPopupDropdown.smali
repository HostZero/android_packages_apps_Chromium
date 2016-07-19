.class public Lorg/chromium/content/browser/input/SelectPopupDropdown;
.super Ljava/lang/Object;
.source "SelectPopupDropdown.java"

# interfaces
.implements Lorg/chromium/content/browser/input/SelectPopup;


# instance fields
.field private final mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private final mContext:Landroid/content/Context;

.field private final mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

.field private mInitialSelection:I

.field private mSelectionNotified:Z


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Ljava/util/List;Landroid/graphics/Rect;[IZ)V
    .locals 5

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mInitialSelection:I

    .line 34
    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 35
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lorg/chromium/ui/DropdownPopupWindow;

    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/chromium/ui/DropdownPopupWindow;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/ViewAndroidDelegate;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    .line 38
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    new-instance v1, Lorg/chromium/content/browser/input/SelectPopupDropdown$1;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/input/SelectPopupDropdown$1;-><init>(Lorg/chromium/content/browser/input/SelectPopupDropdown;)V

    invoke-virtual {v0, v1}, Lorg/chromium/ui/DropdownPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    array-length v0, p4

    if-lez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    aget v0, p4, v0

    iput v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mInitialSelection:I

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    new-instance v1, Lorg/chromium/ui/DropdownAdapter;

    iget-object v2, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3}, Lorg/chromium/ui/DropdownAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lorg/chromium/ui/DropdownPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0, p5}, Lorg/chromium/ui/DropdownPopupWindow;->setRtl(Z)V

    .line 50
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    .line 51
    iget v1, p3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToDip(F)F

    move-result v1

    .line 53
    iget v2, p3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToDip(F)F

    move-result v2

    .line 55
    iget v3, p3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    invoke-virtual {v0, v3}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToDip(F)F

    move-result v3

    sub-float/2addr v3, v1

    .line 57
    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v4

    invoke-virtual {v0, v4}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToDip(F)F

    move-result v0

    sub-float/2addr v0, v2

    .line 59
    iget-object v4, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v4, v1, v2, v3, v0}, Lorg/chromium/ui/DropdownPopupWindow;->setAnchorRect(FFFF)V

    .line 60
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    new-instance v1, Lorg/chromium/content/browser/input/SelectPopupDropdown$2;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/input/SelectPopupDropdown$2;-><init>(Lorg/chromium/content/browser/input/SelectPopupDropdown;)V

    invoke-virtual {v0, v1}, Lorg/chromium/ui/DropdownPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/SelectPopupDropdown;[I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/SelectPopupDropdown;->notifySelection([I)V

    return-void
.end method

.method private notifySelection([I)V
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mSelectionNotified:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->selectPopupMenuItems([I)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mSelectionNotified:Z

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0}, Lorg/chromium/ui/DropdownPopupWindow;->dismiss()V

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/SelectPopupDropdown;->notifySelection([I)V

    .line 87
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0}, Lorg/chromium/ui/DropdownPopupWindow;->show()V

    .line 78
    iget v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mInitialSelection:I

    if-ltz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mInitialSelection:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 81
    :cond_0
    return-void
.end method
