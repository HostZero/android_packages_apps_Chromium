.class public Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;
.super Ljava/lang/Object;
.source "HistoryReportJniBridge.java"

# interfaces
.implements Lorg/chromium/chrome/browser/historyreport/SearchJniBridge;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDataChangeObserver:Lorg/chromium/chrome/browser/historyreport/SearchJniBridge$DataChangeObserver;

.field private mNativeHistoryReportJniBridge:J

.field private final mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;J)J
    .locals 1

    .prologue
    .line 22
    iput-wide p1, p0, Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;->mNativeHistoryReportJniBridge:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;)J
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;->nativeInit()J

    move-result-wide v0

    return-wide v0
.end method

.method private static createDeltaFileEntriesArray(I)[Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;
    .locals 1

    .prologue
    .line 125
    new-array v0, p0, [Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;

    return-object v0
.end method

.method private static createUsageReportsArray(I)[Lorg/chromium/chrome/browser/historyreport/UsageReport;
    .locals 1

    .prologue
    .line 136
    new-array v0, p0, [Lorg/chromium/chrome/browser/historyreport/UsageReport;

    return-object v0
.end method

.method private native nativeAddHistoricVisitsToUsageReportsBuffer(J)Z
.end method

.method private native nativeDump(J)Ljava/lang/String;
.end method

.method private native nativeGetUsageReportsBatch(JI)[Lorg/chromium/chrome/browser/historyreport/UsageReport;
.end method

.method private native nativeInit()J
.end method

.method private native nativeQuery(JJI)[Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;
.end method

.method private native nativeRemoveUsageReports(J[Ljava/lang/String;)V
.end method

.method private native nativeTrimDeltaFile(JJ)J
.end method

.method private onDataChanged()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;->mDataChangeObserver:Lorg/chromium/chrome/browser/historyreport/SearchJniBridge$DataChangeObserver;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/historyreport/SearchJniBridge$DataChangeObserver;->onDataChanged()V

    .line 149
    return-void
.end method

.method private onDataCleared()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;->mDataChangeObserver:Lorg/chromium/chrome/browser/historyreport/SearchJniBridge$DataChangeObserver;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/historyreport/SearchJniBridge$DataChangeObserver;->onDataCleared()V

    .line 155
    return-void
.end method

.method private static setDeltaFileEntry([Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 131
    new-instance v1, Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, p0, p1

    .line 132
    return-void
.end method

.method private static setUsageReport([Lorg/chromium/chrome/browser/historyreport/UsageReport;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 8

    .prologue
    .line 142
    new-instance v1, Lorg/chromium/chrome/browser/historyreport/UsageReport;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/historyreport/UsageReport;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    aput-object v1, p0, p1

    .line 143
    return-void
.end method

.method private startReportingTask()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;->mDataChangeObserver:Lorg/chromium/chrome/browser/historyreport/SearchJniBridge$DataChangeObserver;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/historyreport/SearchJniBridge$DataChangeObserver;->startReportingTask()V

    .line 161
    return-void
.end method

.method private stopReportingTask()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;->mDataChangeObserver:Lorg/chromium/chrome/browser/historyreport/SearchJniBridge$DataChangeObserver;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/historyreport/SearchJniBridge$DataChangeObserver;->stopReportingTask()V

    .line 167
    return-void
.end method


# virtual methods
.method public isStartedForTest()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
