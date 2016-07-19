.class public Lorg/chromium/policy/CombinedPolicyProvider;
.super Ljava/lang/Object;
.source "CombinedPolicyProvider.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstance:Lorg/chromium/policy/CombinedPolicyProvider;


# instance fields
.field private final mCachedPolicies:Ljava/util/List;

.field private mNativeCombinedPolicyProvider:J

.field private final mPolicyChangeListeners:Ljava/util/List;

.field private mPolicyConverter:Lorg/chromium/policy/PolicyConverter;

.field private final mPolicyProviders:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/chromium/policy/CombinedPolicyProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/policy/CombinedPolicyProvider;->$assertionsDisabled:Z

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/policy/CombinedPolicyProvider;->sInstance:Lorg/chromium/policy/CombinedPolicyProvider;

    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mNativeCombinedPolicyProvider:J

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyChangeListeners:Ljava/util/List;

    .line 141
    return-void
.end method

.method public static get()Lorg/chromium/policy/CombinedPolicyProvider;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/chromium/policy/CombinedPolicyProvider;->sInstance:Lorg/chromium/policy/CombinedPolicyProvider;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lorg/chromium/policy/CombinedPolicyProvider;

    invoke-direct {v0}, Lorg/chromium/policy/CombinedPolicyProvider;-><init>()V

    sput-object v0, Lorg/chromium/policy/CombinedPolicyProvider;->sInstance:Lorg/chromium/policy/CombinedPolicyProvider;

    .line 36
    :cond_0
    sget-object v0, Lorg/chromium/policy/CombinedPolicyProvider;->sInstance:Lorg/chromium/policy/CombinedPolicyProvider;

    return-object v0
.end method

.method public static linkNative(JLorg/chromium/policy/PolicyConverter;)Lorg/chromium/policy/CombinedPolicyProvider;
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 54
    invoke-static {}, Lorg/chromium/policy/CombinedPolicyProvider;->get()Lorg/chromium/policy/CombinedPolicyProvider;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/policy/CombinedPolicyProvider;->linkNativeInternal(JLorg/chromium/policy/PolicyConverter;)V

    .line 55
    invoke-static {}, Lorg/chromium/policy/CombinedPolicyProvider;->get()Lorg/chromium/policy/CombinedPolicyProvider;

    move-result-object v0

    return-object v0
.end method

.method private linkNativeInternal(JLorg/chromium/policy/PolicyConverter;)V
    .locals 3

    .prologue
    .line 41
    iput-wide p1, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mNativeCombinedPolicyProvider:J

    .line 42
    iput-object p3, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyConverter:Lorg/chromium/policy/PolicyConverter;

    .line 43
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/policy/PolicyProvider;

    .line 45
    invoke-virtual {v0}, Lorg/chromium/policy/PolicyProvider;->refresh()V

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public static set(Lorg/chromium/policy/CombinedPolicyProvider;)V
    .locals 0

    .prologue
    .line 137
    sput-object p0, Lorg/chromium/policy/CombinedPolicyProvider;->sInstance:Lorg/chromium/policy/CombinedPolicyProvider;

    .line 138
    return-void
.end method


# virtual methods
.method public addPolicyChangeListener(Lorg/chromium/policy/CombinedPolicyProvider$PolicyChangeListener;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 72
    sget-boolean v0, Lorg/chromium/policy/CombinedPolicyProvider;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/policy/PolicyProvider;

    .line 75
    invoke-virtual {v0}, Lorg/chromium/policy/PolicyProvider;->destroy()V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyConverter:Lorg/chromium/policy/PolicyConverter;

    .line 79
    return-void
.end method

.method protected native nativeFlushPolicies(J)V
.end method

.method onSettingsAvailable(ILandroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 85
    if-nez v0, :cond_0

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    iget-wide v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mNativeCombinedPolicyProvider:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 91
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    iget-object v4, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyConverter:Lorg/chromium/policy/PolicyConverter;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/chromium/policy/PolicyConverter;->setPolicy(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 95
    :cond_4
    iget-wide v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mNativeCombinedPolicyProvider:J

    invoke-virtual {p0, v0, v1}, Lorg/chromium/policy/CombinedPolicyProvider;->nativeFlushPolicies(J)V

    goto :goto_0
.end method

.method refreshPolicies()V
    .locals 3

    .prologue
    .line 116
    sget-boolean v0, Lorg/chromium/policy/CombinedPolicyProvider;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 118
    iget-object v1, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/policy/PolicyProvider;

    .line 121
    invoke-virtual {v0}, Lorg/chromium/policy/PolicyProvider;->refresh()V

    goto :goto_1

    .line 123
    :cond_2
    return-void
.end method

.method public registerProvider(Lorg/chromium/policy/PolicyProvider;)V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, p0, v0}, Lorg/chromium/policy/PolicyProvider;->setManagerAndSource(Lorg/chromium/policy/CombinedPolicyProvider;I)V

    .line 67
    iget-wide v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mNativeCombinedPolicyProvider:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/policy/PolicyProvider;->refresh()V

    .line 68
    :cond_0
    return-void
.end method

.method public removePolicyChangeListener(Lorg/chromium/policy/CombinedPolicyProvider$PolicyChangeListener;)V
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lorg/chromium/policy/CombinedPolicyProvider;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method terminateIncognitoSession()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->mPolicyChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/policy/CombinedPolicyProvider$PolicyChangeListener;

    .line 100
    invoke-interface {v0}, Lorg/chromium/policy/CombinedPolicyProvider$PolicyChangeListener;->terminateIncognitoSession()V

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method
