.class public Lorg/chromium/chrome/browser/password_manager/Credential;
.super Ljava/lang/Object;
.source "Credential.java"


# instance fields
.field private mAvatar:Landroid/graphics/Bitmap;

.field private final mDisplayName:Ljava/lang/String;

.field private final mFederation:Ljava/lang/String;

.field private final mIndex:I

.field private final mType:I

.field private final mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/Credential;->mUsername:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lorg/chromium/chrome/browser/password_manager/Credential;->mDisplayName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lorg/chromium/chrome/browser/password_manager/Credential;->mFederation:Ljava/lang/String;

    .line 37
    iput p4, p0, Lorg/chromium/chrome/browser/password_manager/Credential;->mType:I

    .line 38
    iput p5, p0, Lorg/chromium/chrome/browser/password_manager/Credential;->mIndex:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/password_manager/Credential;->mAvatar:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method

.method private static createCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lorg/chromium/chrome/browser/password_manager/Credential;
    .locals 6

    .prologue
    .line 73
    new-instance v0, Lorg/chromium/chrome/browser/password_manager/Credential;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/password_manager/Credential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method private static createCredentialArray(I)[Lorg/chromium/chrome/browser/password_manager/Credential;
    .locals 1

    .prologue
    .line 78
    new-array v0, p0, [Lorg/chromium/chrome/browser/password_manager/Credential;

    return-object v0
.end method


# virtual methods
.method public getAvatar()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/Credential;->mAvatar:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/Credential;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFederation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/Credential;->mFederation:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lorg/chromium/chrome/browser/password_manager/Credential;->mIndex:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lorg/chromium/chrome/browser/password_manager/Credential;->mType:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/Credential;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/Credential;->mAvatar:Landroid/graphics/Bitmap;

    .line 68
    return-void
.end method
