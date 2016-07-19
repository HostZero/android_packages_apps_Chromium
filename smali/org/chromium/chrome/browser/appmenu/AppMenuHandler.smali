.class public Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;
.super Ljava/lang/Object;
.source "AppMenuHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

.field private mAppMenuDragHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

.field private final mDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

.field private final mHardwareButtonMenuAnchor:Landroid/view/View;

.field private mMenu:Landroid/view/Menu;

.field private final mMenuResourceId:I

.field private final mObservers:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;I)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mActivity:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mObservers:Ljava/util/ArrayList;

    .line 50
    iput p3, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mMenuResourceId:I

    .line 51
    sget v0, Lorg/chromium/chrome/R$id;->menu_anchor_stub:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mHardwareButtonMenuAnchor:Landroid/view/View;

    .line 53
    sget-boolean v0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mHardwareButtonMenuAnchor:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Using AppMenu requires to have menu_anchor_stub view"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/chromium/chrome/browser/appmenu/AppMenuObserver;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method appMenuDismissed()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenuDragHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->finishDragging()V

    .line 145
    return-void
.end method

.method public getAppMenu()Lorg/chromium/chrome/browser/appmenu/AppMenu;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    return-object v0
.end method

.method getAppMenuDragHelper()Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenuDragHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    return-object v0
.end method

.method public hideAppMenu()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->dismiss()V

    .line 170
    :cond_0
    return-void
.end method

.method public isAppMenuShowing()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public menuItemContentChanged(I)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->menuItemContentChanged(I)V

    .line 65
    :cond_0
    return-void
.end method

.method onMenuVisibilityChanged(Z)V
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/appmenu/AppMenuObserver;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuObserver;->onMenuVisibilityChanged(Z)V

    .line 197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 190
    return-void
.end method

.method public showAppMenu(Landroid/view/View;Z)Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->shouldShowAppMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->isAppMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v9, v6

    .line 140
    :goto_0
    return v9

    .line 84
    :cond_1
    if-nez p1, :cond_7

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 89
    iget-object v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 90
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 91
    iget-object v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mHardwareButtonMenuAnchor:Landroid/view/View;

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    .line 93
    iget-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mHardwareButtonMenuAnchor:Landroid/view/View;

    move v8, v9

    .line 97
    :goto_1
    sget-boolean v0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-eqz v8, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_3

    .line 102
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 103
    iget v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mMenuResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 104
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mMenu:Landroid/view/Menu;

    .line 106
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->prepareMenu(Landroid/view/Menu;)V

    .line 108
    new-instance v10, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mActivity:Landroid/app/Activity;

    sget v1, Lorg/chromium/chrome/R$style;->OverflowMenuTheme:I

    invoke-direct {v10, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    if-nez v0, :cond_4

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {v10, v0}, Landroid/view/ContextThemeWrapper;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 114
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 116
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    new-instance v0, Lorg/chromium/chrome/browser/appmenu/AppMenu;

    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mMenu:Landroid/view/Menu;

    iget-object v4, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/appmenu/AppMenu;-><init>(Landroid/view/Menu;IILorg/chromium/chrome/browser/appmenu/AppMenuHandler;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    .line 119
    new-instance v0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    invoke-direct {v0, v1, v3, v2}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/appmenu/AppMenu;I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenuDragHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    .line 123
    :cond_4
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 127
    iget v0, v5, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_5

    iget v0, v5, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_5

    .line 128
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 129
    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 130
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 133
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 134
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 135
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    iget v6, v1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->getFooterResourceId()I

    move-result v7

    move-object v1, v10

    move-object v2, p1

    move v3, v8

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->show(Landroid/content/Context;Landroid/view/View;ZILandroid/graphics/Rect;II)V

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->mAppMenuDragHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->onShow(Z)V

    .line 139
    const-string/jumbo v0, "MobileMenuShow"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v3, v6

    .line 115
    goto/16 :goto_2

    :cond_7
    move v8, v6

    goto/16 :goto_1

    .line 111
    nop

    :array_0
    .array-data 4
        0x1010387
        0x1010214
    .end array-data
.end method
