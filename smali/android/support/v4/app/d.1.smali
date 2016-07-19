.class public Landroid/support/v4/app/d;
.super Ljava/lang/Object;
.source "ActivityCompat21.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 2220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2221
    return-void
.end method

.method static synthetic a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 8031
    invoke-static {p0}, Landroid/support/v4/app/d;->b(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 3036
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 4027
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3039
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/app/f;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;II)Landroid/support/v4/app/d;
    .locals 2

    .prologue
    .line 2047
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2048
    new-instance v0, Landroid/support/v4/app/g;

    invoke-static {p0, p1, p2}, Landroid/support/v4/app/f;->a(Landroid/content/Context;II)Landroid/support/v4/app/f;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/g;-><init>(Landroid/support/v4/app/f;)V

    .line 2051
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/app/d;

    invoke-direct {v0}, Landroid/support/v4/app/d;-><init>()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 5037
    if-eqz p0, :cond_0

    .line 5038
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p0

    .line 5040
    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5045
    if-eqz p0, :cond_1

    .line 5046
    invoke-static {p2, p1}, Landroid/support/v4/app/d;->b(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 5047
    if-eqz p3, :cond_0

    .line 5048
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5050
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5051
    const/4 p0, 0x0

    .line 5057
    :cond_1
    :goto_0
    return-object p0

    .line 5053
    :cond_2
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    .line 5054
    check-cast v0, Landroid/transition/Transition;

    invoke-static {v0, p2}, Landroid/support/v4/app/d;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Notification$Builder;Landroid/support/v4/app/an;)V
    .locals 5

    .prologue
    .line 8102
    new-instance v1, Landroid/app/Notification$Action$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/an;->a()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/an;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/an;->c()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 8104
    invoke-virtual {p1}, Landroid/support/v4/app/an;->e()[Landroid/support/v4/app/aH;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8105
    invoke-virtual {p1}, Landroid/support/v4/app/an;->e()[Landroid/support/v4/app/aH;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/d;->a([Landroid/support/v4/app/aH;)[Landroid/app/RemoteInput;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 8107
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 8105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8110
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/an;->d()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8111
    invoke-virtual {p1}, Landroid/support/v4/app/an;->d()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 8113
    :cond_1
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 8114
    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 4051
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 5031
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4056
    :goto_0
    return-void

    .line 4054
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/f;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 5071
    check-cast p0, Landroid/transition/Transition;

    .line 5072
    invoke-static {p1}, Landroid/support/v4/app/d;->b(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 5074
    new-instance v1, Landroid/support/v4/app/E;

    invoke-direct {v1, v0}, Landroid/support/v4/app/E;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 5080
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 6226
    check-cast p0, Landroid/transition/TransitionSet;

    .line 6227
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 6228
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6230
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v6

    .line 6231
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 6232
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v4

    .line 6233
    :goto_0
    if-ge v5, v7, :cond_3

    .line 6234
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6246
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 6247
    invoke-static {v6, v0, v2}, Landroid/support/v4/app/d;->a(Ljava/util/List;Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6250
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 6251
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 6252
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6253
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 6254
    check-cast v0, Landroid/view/ViewGroup;

    .line 6255
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v3, v4

    .line 6256
    :goto_2
    if-ge v3, v8, :cond_1

    .line 6257
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 6258
    invoke-static {v6, v9, v2}, Landroid/support/v4/app/d;->a(Ljava/util/List;Landroid/view/View;I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 6259
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6256
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6251
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 6233
    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 6237
    :cond_3
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6238
    invoke-static {p0, p3}, Landroid/support/v4/app/d;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 6239
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 5061
    check-cast p0, Landroid/transition/Transition;

    .line 5062
    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 5063
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/J;Landroid/view/View;Landroid/support/v4/app/I;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 11

    .prologue
    .line 5112
    if-nez p0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    move-object v4, p0

    .line 5113
    check-cast v4, Landroid/transition/Transition;

    .line 5114
    if-eqz v4, :cond_1

    .line 5115
    invoke-virtual {v4, p4}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 5117
    :cond_1
    if-eqz p1, :cond_2

    .line 5118
    move-object/from16 v0, p8

    move-object/from16 v1, p10

    invoke-static {p1, p4, v0, v1}, Landroid/support/v4/app/d;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 5123
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    new-instance v2, Landroid/support/v4/app/F;

    move-object v3, p2

    move-object v5, p4

    move-object v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Landroid/support/v4/app/F;-><init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Landroid/support/v4/app/J;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5281
    if-eqz v4, :cond_3

    .line 5282
    new-instance v2, Landroid/support/v4/app/G;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Landroid/support/v4/app/G;-><init>(Landroid/support/v4/app/I;)V

    invoke-virtual {v4, v2}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 5157
    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 6387
    check-cast p0, Landroid/transition/Transition;

    .line 6388
    instance-of v0, p0, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 6389
    check-cast p0, Landroid/transition/TransitionSet;

    .line 6390
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    .line 6391
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 6392
    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v2

    .line 6393
    invoke-static {v2, p1}, Landroid/support/v4/app/d;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 6391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6395
    :cond_0
    invoke-static {p0}, Landroid/support/v4/app/d;->a(Landroid/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6396
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 6397
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6400
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 6401
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 6400
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 6405
    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 7031
    invoke-static {p0, p1}, Landroid/support/v4/app/d;->b(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public static a(Ljava/util/Map;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 6325
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 6326
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    .line 6327
    if-eqz v0, :cond_0

    .line 6328
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6330
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 6331
    check-cast p1, Landroid/view/ViewGroup;

    .line 6332
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6333
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 6334
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6335
    invoke-static {p0, v2}, Landroid/support/v4/app/d;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 6333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6339
    :cond_1
    return-void
.end method

.method public static a(Landroid/app/ActivityManager;)Z
    .locals 2

    .prologue
    .line 1039
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2023
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    .line 1042
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/transition/Transition;)Z
    .locals 1

    .prologue
    .line 6437
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/d;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/d;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/d;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 6443
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Landroid/view/View;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6271
    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 6272
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 6273
    const/4 v0, 0x1

    .line 6276
    :cond_0
    return v0

    .line 6271
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static a([Landroid/support/v4/app/aH;)[Landroid/app/RemoteInput;
    .locals 5

    .prologue
    .line 9039
    if-nez p0, :cond_0

    .line 9040
    const/4 v0, 0x0

    .line 9052
    :goto_0
    return-object v0

    .line 9042
    :cond_0
    array-length v0, p0

    new-array v1, v0, [Landroid/app/RemoteInput;

    .line 9043
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 9044
    aget-object v2, p0, v0

    .line 9045
    new-instance v3, Landroid/app/RemoteInput$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/aH;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/aH;->b()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/v4/app/aH;->c()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/v4/app/aH;->d()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/v4/app/aH;->e()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v2

    aput-object v2, v1, v0

    .line 9043
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 9052
    goto :goto_0
.end method

.method private static b(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 6297
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6298
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 6299
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6301
    aget v2, v1, v4

    aget v3, v1, v6

    aget v4, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v1, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 6302
    return-object v0
.end method

.method public static b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6416
    check-cast p0, Landroid/transition/Transition;

    .line 6417
    instance-of v1, p0, Landroid/transition/TransitionSet;

    if-eqz v1, :cond_0

    .line 6418
    check-cast p0, Landroid/transition/TransitionSet;

    .line 6419
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    .line 6420
    :goto_0
    if-ge v0, v1, :cond_1

    .line 6421
    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v2

    .line 6422
    invoke-static {v2, p1}, Landroid/support/v4/app/d;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 6420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6424
    :cond_0
    invoke-static {p0}, Landroid/support/v4/app/d;->a(Landroid/transition/Transition;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6425
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 6426
    invoke-static {v1}, Landroid/support/v4/app/d;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6428
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 6429
    :goto_1
    if-ge v1, v2, :cond_1

    .line 6430
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 6429
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 6434
    :cond_1
    return-void
.end method

.method private static b(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 6306
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6307
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 6308
    check-cast p1, Landroid/view/ViewGroup;

    .line 6309
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6310
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6322
    :cond_0
    :goto_0
    return-void

    .line 6312
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6313
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 6314
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6315
    invoke-static {p0, v2}, Landroid/support/v4/app/d;->b(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 6313
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6319
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static b([Landroid/support/v4/app/aH;)[Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 9069
    if-nez p0, :cond_0

    .line 9070
    const/4 v0, 0x0

    .line 9076
    :goto_0
    return-object v0

    .line 9072
    :cond_0
    array-length v0, p0

    new-array v1, v0, [Landroid/os/Bundle;

    .line 9073
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 9074
    aget-object v2, p0, v0

    .line 10047
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 10048
    const-string/jumbo v4, "resultKey"

    invoke-virtual {v2}, Landroid/support/v4/app/aH;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10049
    const-string/jumbo v4, "label"

    invoke-virtual {v2}, Landroid/support/v4/app/aH;->b()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 10050
    const-string/jumbo v4, "choices"

    invoke-virtual {v2}, Landroid/support/v4/app/aH;->c()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 10051
    const-string/jumbo v4, "allowFreeFormInput"

    invoke-virtual {v2}, Landroid/support/v4/app/aH;->d()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10052
    const-string/jumbo v4, "extras"

    invoke-virtual {v2}, Landroid/support/v4/app/aH;->e()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9074
    aput-object v3, v1, v0

    .line 9073
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 9076
    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2231
    const/4 v0, 0x0

    return-object v0
.end method
