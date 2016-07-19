.class public Lorg/chromium/chrome/browser/util/HashUtil$Params;
.super Ljava/lang/Object;
.source "HashUtil.java"


# instance fields
.field private mSalt:Ljava/lang/String;

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/chromium/chrome/browser/util/HashUtil$Params;->mText:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/util/HashUtil$Params;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/util/HashUtil$Params;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/util/HashUtil$Params;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/util/HashUtil$Params;->mSalt:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public withSalt(Ljava/lang/String;)Lorg/chromium/chrome/browser/util/HashUtil$Params;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lorg/chromium/chrome/browser/util/HashUtil$Params;->mSalt:Ljava/lang/String;

    .line 32
    return-object p0
.end method
