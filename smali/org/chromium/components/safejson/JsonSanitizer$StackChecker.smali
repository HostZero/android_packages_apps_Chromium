.class Lorg/chromium/components/safejson/JsonSanitizer$StackChecker;
.super Ljava/lang/Object;
.source "JsonSanitizer.java"


# instance fields
.field private mStackDepth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/components/safejson/JsonSanitizer$StackChecker;->mStackDepth:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/components/safejson/JsonSanitizer$1;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/chromium/components/safejson/JsonSanitizer$StackChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public decrease()V
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/chromium/components/safejson/JsonSanitizer$StackChecker;->mStackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/components/safejson/JsonSanitizer$StackChecker;->mStackDepth:I

    .line 121
    return-void
.end method

.method public increaseAndCheck()V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lorg/chromium/components/safejson/JsonSanitizer$StackChecker;->mStackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/components/safejson/JsonSanitizer$StackChecker;->mStackDepth:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Too much nesting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    return-void
.end method
