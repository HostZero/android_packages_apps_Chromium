.class public Lorg/chromium/chrome/browser/autofill/PersonalDataManager;
.super Ljava/lang/Object;
.source "PersonalDataManager.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sManager:Lorg/chromium/chrome/browser/autofill/PersonalDataManager;


# instance fields
.field private final mDataObservers:Ljava/util/List;

.field private final mPersonalDataManagerAndroid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    .line 407
    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:J

    .line 408
    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;
    .locals 1

    .prologue
    .line 393
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 394
    sget-object v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->sManager:Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->sManager:Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    .line 397
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->sManager:Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    return-object v0
.end method

.method public static isAutofillEnabled()Z
    .locals 1

    .prologue
    .line 504
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeIsAutofillEnabled()Z

    move-result v0

    return v0
.end method

.method public static isAutofillManaged()Z
    .locals 1

    .prologue
    .line 519
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeIsAutofillManaged()Z

    move-result v0

    return v0
.end method

.method public static isPaymentsIntegrationEnabled()Z
    .locals 1

    .prologue
    .line 526
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeIsPaymentsIntegrationEnabled()Z

    move-result v0

    return v0
.end method

.method private native nativeClearUnmaskedCache(JLjava/lang/String;)V
.end method

.method private native nativeGetCreditCardByGUID(JLjava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;
.end method

.method private native nativeGetCreditCardByIndex(JI)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;
.end method

.method private native nativeGetCreditCardCount(J)I
.end method

.method private native nativeGetProfileByGUID(JLjava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;
.end method

.method private native nativeGetProfileByIndex(JI)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;
.end method

.method private native nativeGetProfileCount(J)I
.end method

.method private native nativeGetProfileLabels(J)[Ljava/lang/String;
.end method

.method private native nativeInit()J
.end method

.method private static native nativeIsAutofillEnabled()Z
.end method

.method private static native nativeIsAutofillManaged()Z
.end method

.method private static native nativeIsPaymentsIntegrationEnabled()Z
.end method

.method private native nativeRemoveByGUID(JLjava/lang/String;)V
.end method

.method private static native nativeSetAutofillEnabled(Z)V
.end method

.method private native nativeSetCreditCard(JLorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)Ljava/lang/String;
.end method

.method private static native nativeSetPaymentsIntegrationEnabled(Z)V
.end method

.method private native nativeSetProfile(JLorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Ljava/lang/String;
.end method

.method private static native nativeToCountryCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private personalDataChanged()V
    .locals 2

    .prologue
    .line 415
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 416
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;

    .line 417
    invoke-interface {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;->onPersonalDataChanged()V

    goto :goto_0

    .line 419
    :cond_0
    return-void
.end method

.method public static setAutofillEnabled(Z)V
    .locals 0

    .prologue
    .line 512
    invoke-static {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeSetAutofillEnabled(Z)V

    .line 513
    return-void
.end method

.method public static setPaymentsIntegrationEnabled(Z)V
    .locals 0

    .prologue
    .line 534
    invoke-static {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeSetPaymentsIntegrationEnabled(Z)V

    .line 535
    return-void
.end method


# virtual methods
.method public clearUnmaskedCache(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 497
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeClearUnmaskedCache(JLjava/lang/String;)V

    .line 498
    return-void
.end method

.method public deleteCreditCard(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 492
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 493
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeRemoveByGUID(JLjava/lang/String;)V

    .line 494
    return-void
.end method

.method public deleteProfile(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 462
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 463
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeRemoveByGUID(JLjava/lang/String;)V

    .line 464
    return-void
.end method

.method public getCreditCard(Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;
    .locals 2

    .prologue
    .line 482
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 483
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeGetCreditCardByGUID(JLjava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    move-result-object v0

    return-object v0
.end method

.method public getCreditCards()Ljava/util/List;
    .locals 6

    .prologue
    .line 472
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 473
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeGetCreditCardCount(J)I

    move-result v1

    .line 474
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 475
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 476
    iget-wide v4, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:J

    invoke-direct {p0, v4, v5, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeGetCreditCardByIndex(JI)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :cond_0
    return-object v2
.end method

.method public getProfile(Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;
    .locals 2

    .prologue
    .line 457
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 458
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeGetProfileByGUID(JLjava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-result-object v0

    return-object v0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 6

    .prologue
    .line 441
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 443
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeGetProfileLabels(J)[Ljava/lang/String;

    move-result-object v1

    .line 445
    iget-wide v2, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeGetProfileCount(J)I

    move-result v2

    .line 446
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 447
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 448
    iget-wide v4, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:J

    invoke-direct {p0, v4, v5, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeGetProfileByIndex(JI)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-result-object v4

    .line 449
    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->setLabel(Ljava/lang/String;)V

    .line 450
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_0
    return-object v3
.end method

.method public registerDataObserver(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;)V
    .locals 1

    .prologue
    .line 425
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 426
    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 427
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    return-void
.end method

.method public setCreditCard(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 488
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeSetCreditCard(JLorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProfile(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 467
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 468
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mPersonalDataManagerAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->nativeSetProfile(JLorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterDataObserver(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;)V
    .locals 1

    .prologue
    .line 434
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 435
    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 436
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 437
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 438
    return-void
.end method
