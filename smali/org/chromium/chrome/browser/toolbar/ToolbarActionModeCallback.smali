.class public Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;
.super Ljava/lang/Object;
.source "ToolbarActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field private static sGetTypeMethod:Ljava/lang/reflect/Method;

.field private static sInitializedTypeMethods:Z

.field private static sTypeFloating:I


# instance fields
.field private mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initializeGetTypeMethods()V
    .locals 3

    .prologue
    .line 79
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->sInitializedTypeMethods:Z

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->sInitializedTypeMethods:Z

    .line 85
    :try_start_0
    const-class v0, Landroid/view/ActionMode;

    const-string/jumbo v1, "getType"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 91
    :try_start_1
    const-class v0, Landroid/view/ActionMode;

    const-string/jumbo v2, "TYPE_FLOATING"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 92
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 95
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 107
    sput-object v1, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->sGetTypeMethod:Ljava/lang/reflect/Method;

    .line 108
    sput v0, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->sTypeFloating:I

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    goto :goto_0

    .line 100
    :catch_2
    move-exception v0

    goto :goto_0

    .line 87
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private static isFloatingActionMode(Landroid/view/ActionMode;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-static {}, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->initializeGetTypeMethods()V

    .line 61
    sget-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->sGetTypeMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    move v0, v1

    .line 75
    :goto_0
    return v0

    .line 65
    :cond_0
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->sGetTypeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 73
    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 71
    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 75
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v2, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->sTypeFloating:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-static {p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->isFloatingActionMode(Landroid/view/ActionMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return v1

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->startShowAnimation()V

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->isFloatingActionMode(Landroid/view/ActionMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->startHideAnimation()V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public setActionModeController(Lorg/chromium/chrome/browser/toolbar/ActionModeController;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    .line 31
    return-void
.end method
