.class public Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;
.super Ljava/lang/Object;
.source "PersonalDataManager.java"


# instance fields
.field private mGUID:Ljava/lang/String;

.field private mIsCached:Z

.field private mIsLocal:Z

.field private mMonth:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mObfuscatedNumber:Ljava/lang/String;

.field private mOrigin:Ljava/lang/String;

.field private mYear:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mGUID:Ljava/lang/String;

    .line 300
    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mOrigin:Ljava/lang/String;

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mIsLocal:Z

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mIsCached:Z

    .line 303
    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mName:Ljava/lang/String;

    .line 304
    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mNumber:Ljava/lang/String;

    .line 305
    iput-object p5, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mObfuscatedNumber:Ljava/lang/String;

    .line 306
    iput-object p6, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mMonth:Ljava/lang/String;

    .line 307
    iput-object p7, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mYear:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mGUID:Ljava/lang/String;

    .line 285
    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mOrigin:Ljava/lang/String;

    .line 286
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mIsLocal:Z

    .line 287
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mIsCached:Z

    .line 288
    iput-object p5, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mName:Ljava/lang/String;

    .line 289
    iput-object p6, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mNumber:Ljava/lang/String;

    .line 290
    iput-object p7, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mObfuscatedNumber:Ljava/lang/String;

    .line 291
    iput-object p8, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mMonth:Ljava/lang/String;

    .line 292
    iput-object p9, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mYear:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;
    .locals 10

    .prologue
    .line 278
    new-instance v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getFormattedExpirationDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->autofill_card_unmask_expiration_date_separator:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCached()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mIsCached:Z

    return v0
.end method

.method public getIsLocal()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mIsLocal:Z

    return v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscatedNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mObfuscatedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mYear:Ljava/lang/String;

    return-object v0
.end method

.method public setGUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mGUID:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mMonth:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->mNumber:Ljava/lang/String;

    .line 374
    return-void
.end method
