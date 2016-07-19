.class public Lorg/chromium/ui/DropdownPopupWindow;
.super Landroid/widget/ListPopupWindow;
.source "DropdownPopupWindow.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mAnchorHeight:F

.field private final mAnchorView:Landroid/view/View;

.field private mAnchorWidth:F

.field private mAnchorX:F

.field private mAnchorY:F

.field private final mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/CharSequence;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mRtl:Z

.field private final mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/DropdownPopupWindow;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/base/ViewAndroidDelegate;)V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget v2, Lorg/chromium/ui/R$style;->DropdownPopupWindow:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lorg/chromium/ui/DropdownPopupWindow;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    .line 53
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-interface {v0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->acquireAnchorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    sget v1, Lorg/chromium/ui/R$id;->dropdown_popup_window:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 55
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    new-instance v0, Lorg/chromium/ui/DropdownPopupWindow$1;

    invoke-direct {v0, p0}, Lorg/chromium/ui/DropdownPopupWindow$1;-><init>(Lorg/chromium/ui/DropdownPopupWindow;)V

    iput-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 64
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 66
    new-instance v0, Lorg/chromium/ui/DropdownPopupWindow$2;

    invoke-direct {v0, p0}, Lorg/chromium/ui/DropdownPopupWindow$2;-><init>(Lorg/chromium/ui/DropdownPopupWindow;)V

    invoke-super {p0, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 78
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/chromium/ui/DropdownPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 80
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 81
    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/DropdownPopupWindow;->setVerticalOffset(I)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/ui/DropdownPopupWindow;)Lorg/chromium/ui/base/ViewAndroidDelegate;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    return-object v0
.end method

.method private measureContentWidth()I
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/4 v0, 0x0

    .line 193
    sget-boolean v1, Lorg/chromium/ui/DropdownPopupWindow;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Set the adapter before showing the popup."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 195
    :cond_0
    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    new-array v2, v1, [Landroid/view/View;

    .line 196
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 197
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v1, v0

    .line 198
    :goto_0
    iget-object v5, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 199
    iget-object v5, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 200
    iget-object v6, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    aget-object v7, v2, v5

    const/4 v8, 0x0

    invoke-interface {v6, v0, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    aput-object v6, v2, v5

    .line 201
    aget-object v5, v2, v5

    .line 202
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 205
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-virtual {v5, v3, v4}, Landroid/view/View;->measure(II)V

    .line 207
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    return v1
.end method


# virtual methods
.method public disableHideOnOutsideTap()V
    .locals 5

    .prologue
    .line 169
    :try_start_0
    const-class v0, Landroid/widget/ListPopupWindow;

    const-string/jumbo v1, "setForceIgnoreOutsideTouch"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 171
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string/jumbo v1, "AutofillPopup"

    const-string/jumbo v2, "ListPopupWindow.setForceIgnoreOutsideTouch not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 107
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    return-void
.end method

.method public setAnchorRect(FFFF)V
    .locals 6

    .prologue
    .line 94
    iput p3, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorWidth:F

    .line 95
    iput p4, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorHeight:F

    .line 96
    iput p1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorX:F

    .line 97
    iput p2, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorY:F

    .line 98
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    iget v2, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorX:F

    iget v3, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorY:F

    iget v4, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorWidth:F

    iget v5, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorHeight:F

    invoke-interface/range {v0 .. v5}, Lorg/chromium/ui/base/ViewAndroidDelegate;->setAnchorViewPosition(Landroid/view/View;FFFF)V

    .line 102
    :cond_0
    return-void
.end method

.method public setContentDescriptionForAccessibility(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mDescription:Ljava/lang/CharSequence;

    .line 186
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 149
    return-void
.end method

.method public setRtl(Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mRtl:Z

    .line 157
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 116
    invoke-virtual {p0, v6}, Lorg/chromium/ui/DropdownPopupWindow;->setInputMethodMode(I)V

    .line 118
    invoke-direct {p0}, Lorg/chromium/ui/DropdownPopupWindow;->measureContentWidth()I

    move-result v0

    .line 119
    int-to-float v1, v0

    iget-object v2, p0, Lorg/chromium/ui/DropdownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 121
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 122
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 123
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorWidth:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 124
    invoke-virtual {p0, v0}, Lorg/chromium/ui/DropdownPopupWindow;->setContentWidth(I)V

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 126
    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 127
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/DropdownPopupWindow;->setWidth(I)V

    .line 133
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    iget v2, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorX:F

    iget v3, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorY:F

    iget v4, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorWidth:F

    iget v5, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorHeight:F

    invoke-interface/range {v0 .. v5}, Lorg/chromium/ui/base/ViewAndroidDelegate;->setAnchorViewPosition(Landroid/view/View;FFFF)V

    .line 135
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->isShowing()Z

    move-result v1

    .line 136
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 137
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 138
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-boolean v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mRtl:Z

    if-eqz v0, :cond_3

    move v0, v6

    :goto_1
    invoke-static {v2, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->setLayoutDirection(Landroid/view/View;I)V

    .line 140
    if-nez v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->sendAccessibilityEvent(I)V

    .line 144
    :cond_1
    return-void

    .line 131
    :cond_2
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lorg/chromium/ui/DropdownPopupWindow;->setWidth(I)V

    goto :goto_0

    :cond_3
    move v0, v7

    .line 138
    goto :goto_1
.end method
