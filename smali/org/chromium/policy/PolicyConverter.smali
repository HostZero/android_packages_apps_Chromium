.class public Lorg/chromium/policy/PolicyConverter;
.super Ljava/lang/Object;
.source "PolicyConverter.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativePolicyConverter:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lorg/chromium/policy/PolicyConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/policy/PolicyConverter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lorg/chromium/policy/PolicyConverter;->mNativePolicyConverter:J

    .line 26
    return-void
.end method

.method private static create(J)Lorg/chromium/policy/PolicyConverter;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lorg/chromium/policy/PolicyConverter;

    invoke-direct {v0, p0, p1}, Lorg/chromium/policy/PolicyConverter;-><init>(J)V

    return-object v0
.end method

.method private native nativeSetPolicyBoolean(JLjava/lang/String;Z)V
.end method

.method private native nativeSetPolicyInteger(JLjava/lang/String;I)V
.end method

.method private native nativeSetPolicyString(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetPolicyStringArray(JLjava/lang/String;[Ljava/lang/String;)V
.end method

.method private onNativeDestroyed()V
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/policy/PolicyConverter;->mNativePolicyConverter:J

    .line 59
    return-void
.end method


# virtual methods
.method public setPolicy(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 30
    sget-boolean v0, Lorg/chromium/policy/PolicyConverter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/policy/PolicyConverter;->mNativePolicyConverter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 33
    iget-wide v0, p0, Lorg/chromium/policy/PolicyConverter;->mNativePolicyConverter:J

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/policy/PolicyConverter;->nativeSetPolicyBoolean(JLjava/lang/String;Z)V

    .line 49
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 37
    iget-wide v0, p0, Lorg/chromium/policy/PolicyConverter;->mNativePolicyConverter:J

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/policy/PolicyConverter;->nativeSetPolicyString(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_3
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 41
    iget-wide v0, p0, Lorg/chromium/policy/PolicyConverter;->mNativePolicyConverter:J

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/policy/PolicyConverter;->nativeSetPolicyInteger(JLjava/lang/String;I)V

    goto :goto_0

    .line 44
    :cond_4
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 45
    iget-wide v0, p0, Lorg/chromium/policy/PolicyConverter;->mNativePolicyConverter:J

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/policy/PolicyConverter;->nativeSetPolicyStringArray(JLjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_5
    sget-boolean v0, Lorg/chromium/policy/PolicyConverter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid setting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
