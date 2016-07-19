.class Lorg/chromium/base/CommandLine$JavaCommandLine;
.super Lorg/chromium/base/CommandLine;
.source "CommandLine.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mArgs:Ljava/util/ArrayList;

.field private mArgsBegin:I

.field private mSwitches:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 282
    const-class v0, Lorg/chromium/base/CommandLine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/CommandLine$JavaCommandLine;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/base/CommandLine;-><init>(Lorg/chromium/base/CommandLine$1;)V

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mSwitches:Ljava/util/HashMap;

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    .line 287
    iput v2, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mArgsBegin:I

    .line 290
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    if-nez v0, :cond_1

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :goto_0
    sget-boolean v0, Lorg/chromium/base/CommandLine$JavaCommandLine;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 293
    :cond_1
    iget-object v0, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-direct {p0, p1, v2}, Lorg/chromium/base/CommandLine$JavaCommandLine;->appendSwitchesInternal([Ljava/lang/String;I)V

    goto :goto_0

    .line 298
    :cond_2
    return-void
.end method

.method static synthetic access$200(Lorg/chromium/base/CommandLine$JavaCommandLine;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lorg/chromium/base/CommandLine$JavaCommandLine;->getCommandLineArguments()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private appendSwitchesInternal([Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 351
    .line 352
    array-length v6, p1

    move v4, v3

    move v0, v5

    move v2, p2

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v7, p1, v4

    .line 353
    if-lez v2, :cond_0

    .line 354
    add-int/lit8 v1, v2, -0x1

    .line 352
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_0

    .line 358
    :cond_0
    const-string/jumbo v1, "--"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 362
    :goto_2
    if-eqz v1, :cond_2

    const-string/jumbo v0, "--"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    const-string/jumbo v0, "="

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 364
    array-length v0, v7

    if-le v0, v5, :cond_1

    aget-object v0, v7, v5

    .line 365
    :goto_3
    aget-object v7, v7, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v0}, Lorg/chromium/base/CommandLine$JavaCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move v1, v2

    .line 366
    goto :goto_1

    .line 364
    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    .line 367
    :cond_2
    iget-object v0, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v1, v2

    goto :goto_1

    .line 370
    :cond_3
    return-void

    :cond_4
    move v1, v0

    goto :goto_2
.end method

.method private getCommandLineArguments()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public appendSwitch(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/base/CommandLine$JavaCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 333
    iget-object v1, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mSwitches:Ljava/util/HashMap;

    if-nez p2, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    :cond_0
    iget-object v1, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    iget v2, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mArgsBegin:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mArgsBegin:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 342
    return-void

    :cond_1
    move-object v0, p2

    .line 333
    goto :goto_0
.end method

.method public appendSwitchesAndArguments([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/base/CommandLine$JavaCommandLine;->appendSwitchesInternal([Ljava/lang/String;I)V

    .line 347
    return-void
.end method

.method public getSwitchValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mSwitches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public hasSwitch(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/chromium/base/CommandLine$JavaCommandLine;->mSwitches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
