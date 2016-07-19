.class final Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;
.super Ljava/lang/Object;
.source "ConnectivityTask.java"


# instance fields
.field private final mConnectionType:I

.field private final mConnections:Ljava/util/Map;

.field private final mElapsedTimeMs:J

.field private final mTimeoutMs:I


# direct methods
.method constructor <init>(Ljava/util/Map;IJI)V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;->mConnections:Ljava/util/Map;

    .line 154
    iput p2, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;->mTimeoutMs:I

    .line 155
    iput-wide p3, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;->mElapsedTimeMs:J

    .line 156
    iput p5, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;->mConnectionType:I

    .line 157
    return-void
.end method


# virtual methods
.method final getConnections()Ljava/util/Map;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;->mConnections:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final getElapsedTimeMs()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;->mElapsedTimeMs:J

    return-wide v0
.end method

.method final getTimeoutMs()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;->mTimeoutMs:I

    return v0
.end method

.method final toMap()Ljava/util/Map;
    .locals 6

    .prologue
    .line 188
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;->mConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    # invokes: Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->getHumanReadableType(Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;)Ljava/lang/String;
    invoke-static {v1}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->access$000(Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->getHumanReadableResult(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 193
    :cond_0
    const-string/jumbo v0, "Connection check elapsed (ms)"

    iget-wide v4, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;->mElapsedTimeMs:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string/jumbo v0, "Connection type"

    iget v1, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;->mConnectionType:I

    invoke-static {v1}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->getHumanReadableConnectionType(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-object v2
.end method
