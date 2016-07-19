.class public Lorg/chromium/ui/base/WindowAndroid;
.super Ljava/lang/Object;
.source "WindowAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final START_INTENT_FAILURE:I = -0x1

.field static final WINDOW_CALLBACK_ERRORS:Ljava/lang/String; = "window_callback_errors"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnimationPlaceholderView:Landroid/view/View;

.field private mAnimationsOverContent:Ljava/util/HashSet;

.field protected mApplicationContext:Landroid/content/Context;

.field private mContextRef:Ljava/lang/ref/WeakReference;

.field protected mIntentErrors:Ljava/util/HashMap;

.field protected mIsKeyboardShowing:Z

.field private mIsTouchExplorationEnabled:Z

.field private mKeyboardAccessoryView:Landroid/view/ViewGroup;

.field private mKeyboardVisibilityListeners:Ljava/util/LinkedList;

.field private mNativeWindowAndroid:J

.field protected mOutstandingIntents:Landroid/util/SparseArray;

.field private mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

.field private mTouchExplorationMonitor:Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

.field private final mVSyncListener:Lorg/chromium/ui/VSyncMonitor$Listener;

.field private final mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/base/WindowAndroid;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mIsKeyboardShowing:Z

    .line 114
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityListeners:Ljava/util/LinkedList;

    .line 117
    new-instance v0, Lorg/chromium/ui/base/WindowAndroid$1;

    invoke-direct {v0, p0}, Lorg/chromium/ui/base/WindowAndroid$1;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    .line 163
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    .line 166
    new-instance v0, Lorg/chromium/ui/VSyncMonitor;

    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    invoke-direct {v0, p1, v1}, Lorg/chromium/ui/VSyncMonitor;-><init>(Landroid/content/Context;Lorg/chromium/ui/VSyncMonitor$Listener;)V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;

    .line 167
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 169
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/ui/base/WindowAndroid;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mIsTouchExplorationEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lorg/chromium/ui/base/WindowAndroid;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/ui/base/WindowAndroid;->refreshWillNotDraw()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/ui/base/WindowAndroid;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/ui/VSyncMonitor;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/ui/base/WindowAndroid;JJJ)V
    .locals 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p6}, Lorg/chromium/ui/base/WindowAndroid;->nativeOnVSync(JJJ)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/ui/base/WindowAndroid;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    return-object v0
.end method

.method public static activityFromContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 137
    check-cast v0, Landroid/app/Activity;

    .line 142
    :goto_1
    return-object v0

    .line 138
    :cond_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 139
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static createForTesting(Landroid/content/Context;)Lorg/chromium/ui/base/WindowAndroid;
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {v0, p0}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeOnActivityStarted(J)V
.end method

.method private native nativeOnActivityStopped(J)V
.end method

.method private native nativeOnVSync(JJJ)V
.end method

.method private native nativeOnVisibilityChanged(JZ)V
.end method

.method private refreshWillNotDraw()V
    .locals 2

    .prologue
    .line 631
    iget-boolean v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 632
    :goto_0
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->willNotDraw()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 633
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 635
    :cond_0
    return-void

    .line 631
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestVSyncUpdate()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;

    invoke-virtual {v0}, Lorg/chromium/ui/VSyncMonitor;->requestUpdate()V

    .line 435
    return-void
.end method


# virtual methods
.method public addKeyboardVisibilityListener(Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;)V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->registerKeyboardVisibilityCallbacks()V

    .line 548
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 549
    return-void
.end method

.method public final canRequestPermission(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/ui/base/AndroidPermissionDelegate;->canRequestPermission(Ljava/lang/String;)Z

    move-result v0

    .line 294
    :goto_0
    return v0

    .line 290
    :cond_0
    const-string/jumbo v0, "WindowAndroid"

    const-string/jumbo v1, "Cannot determine the request permission state as the context is not an Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-boolean v0, Lorg/chromium/ui/base/WindowAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Failed to determine the request permission state using a WindowAndroid without an Activity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 294
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canResolveActivity(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 471
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 478
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 479
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->nativeDestroy(J)V

    .line 480
    iput-wide v2, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 483
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 484
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mTouchExplorationMonitor:Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mTouchExplorationMonitor:Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;->destroy()V

    .line 486
    :cond_1
    return-void
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .locals 2

    .prologue
    .line 369
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContext()Ljava/lang/ref/WeakReference;
    .locals 2

    .prologue
    .line 621
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getKeyboardAccessoryView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardAccessoryView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getNativePointer()J
    .locals 4

    .prologue
    .line 494
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 495
    invoke-direct {p0}, Lorg/chromium/ui/base/WindowAndroid;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 497
    :cond_0
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    return-wide v0
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/ui/base/AndroidPermissionDelegate;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    .line 268
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPermissionRevokedByPolicy(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/ui/base/AndroidPermissionDelegate;->isPermissionRevokedByPolicy(Ljava/lang/String;)Z

    move-result v0

    .line 312
    :goto_0
    return v0

    .line 308
    :cond_0
    const-string/jumbo v0, "WindowAndroid"

    const-string/jumbo v1, "Cannot determine the policy permission state as the context is not an Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-boolean v0, Lorg/chromium/ui/base/WindowAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Failed to determine the policy permission state using a WindowAndroid without an Activity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 312
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected keyboardVisibilityPossiblyChanged(Z)V
    .locals 2

    .prologue
    .line 567
    iget-boolean v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mIsKeyboardShowing:Z

    if-ne v0, p1, :cond_1

    .line 576
    :cond_0
    return-void

    .line 568
    :cond_1
    iput-boolean p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mIsKeyboardShowing:Z

    .line 571
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityListeners:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 573
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;

    .line 574
    invoke-interface {v0, p1}, Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;->keyboardVisibilityChanged(Z)V

    goto :goto_0
.end method

.method protected onActivityStarted()V
    .locals 4

    .prologue
    .line 428
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->nativeOnActivityStarted(J)V

    goto :goto_0
.end method

.method protected onActivityStopped()V
    .locals 4

    .prologue
    .line 419
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->nativeOnActivityStopped(J)V

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 4

    .prologue
    .line 410
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/ui/base/WindowAndroid;->nativeOnVisibilityChanged(JZ)V

    goto :goto_0
.end method

.method protected registerKeyboardVisibilityCallbacks()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method public removeKeyboardVisibilityListener(Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;)V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 556
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->unregisterKeyboardVisibilityCallbacks()V

    .line 559
    :cond_0
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/ui/base/AndroidPermissionDelegate;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    .line 328
    :cond_0
    return-void

    .line 326
    :cond_1
    const-string/jumbo v0, "WindowAndroid"

    const-string/jumbo v1, "Cannot request permissions as the context is not an Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-boolean v0, Lorg/chromium/ui/base/WindowAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Failed to request permissions using a WindowAndroid without an Activity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 394
    if-nez p1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    const-string/jumbo v0, "window_callback_errors"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 397
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 399
    check-cast v0, Ljava/util/HashMap;

    .line 400
    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 385
    const-string/jumbo v0, "window_callback_errors"

    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 386
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 361
    return-void
.end method

.method public setAndroidPermissionDelegate(Lorg/chromium/ui/base/AndroidPermissionDelegate;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    .line 182
    return-void
.end method

.method public setAnimationPlaceholderView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 506
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    .line 510
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mIsTouchExplorationEnabled:Z

    .line 511
    invoke-direct {p0}, Lorg/chromium/ui/base/WindowAndroid;->refreshWillNotDraw()V

    .line 512
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 513
    new-instance v0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

    invoke-direct {v0, p0}, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mTouchExplorationMonitor:Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

    .line 515
    :cond_0
    return-void
.end method

.method public setKeyboardAccessoryView(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardAccessoryView:Landroid/view/ViewGroup;

    .line 524
    return-void
.end method

.method protected showCallbackNonExistentError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->showError(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public showCancelableIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 3

    .prologue
    .line 219
    const-string/jumbo v0, "WindowAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t show intent as context is not an Activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, -0x1

    return v0
.end method

.method public showCancelableIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 3

    .prologue
    .line 233
    const-string/jumbo v0, "WindowAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t show intent as context is not an Activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, -0x1

    return v0
.end method

.method public showError(I)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->showError(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 335
    if-eqz p1, :cond_0

    .line 336
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 338
    :cond_0
    return-void
.end method

.method public showIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/ui/base/WindowAndroid;->showCancelableIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/ui/base/WindowAndroid;->showCancelableIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnimationOverContent(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 590
    :cond_0
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 592
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Already Added."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_2
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 600
    invoke-direct {p0}, Lorg/chromium/ui/base/WindowAndroid;->refreshWillNotDraw()V

    .line 604
    new-instance v0, Lorg/chromium/ui/base/WindowAndroid$2;

    invoke-direct {v0, p0}, Lorg/chromium/ui/base/WindowAndroid$2;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method protected unregisterKeyboardVisibilityCallbacks()V
    .locals 0

    .prologue
    .line 537
    return-void
.end method
