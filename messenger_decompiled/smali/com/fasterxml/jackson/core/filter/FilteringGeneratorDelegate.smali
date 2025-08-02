.class public Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;
.super Lcom/fasterxml/jackson/core/util/JsonGeneratorDelegate;
.source "FilteringGeneratorDelegate.java"


# instance fields
.field protected _allowMultipleMatches:Z

.field protected _filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

.field protected _includeImmediateParent:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _includePath:Z

.field protected _itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

.field protected _matchCount:I

.field protected rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/filter/TokenFilter;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/JsonGeneratorDelegate;-><init>(Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 98
    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 100
    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 101
    invoke-static {p2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createRootContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 102
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_includePath:Z

    .line 103
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_allowMultipleMatches:Z

    return-void
.end method


# virtual methods
.method protected _checkBinaryWrite()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1012
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeBinary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1016
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    return v3

    :cond_2
    return v1
.end method

.method protected _checkParentPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 972
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_matchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_matchCount:I

    .line 974
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_includePath:Z

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->writePath(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 978
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_allowMultipleMatches:Z

    if-nez v0, :cond_1

    .line 980
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->skipParentChecks()V

    :cond_1
    return-void
.end method

.method protected _checkPropertyParentPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 991
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_matchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_matchCount:I

    .line 992
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_includePath:Z

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->writePath(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 994
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_includeImmediateParent:Z

    if-eqz v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->writeImmediatePath(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1001
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_allowMultipleMatches:Z

    if-nez v0, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->skipParentChecks()V

    :cond_2
    return-void
.end method

.method protected _checkRawValueWrite()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1027
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeRawValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1031
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    return v3

    :cond_2
    return v1
.end method

.method public getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-object v0
.end method

.method public getFilterContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-object v0
.end method

.method public getMatchCount()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_matchCount:I

    return v0
.end method

.method public getOutputContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-object v0
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkBinaryWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkBinaryWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    :cond_0
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 817
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 818
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 822
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 823
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeBoolean(Z)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 827
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 829
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    return-void
.end method

.method public writeEndArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->closeArray(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    :cond_0
    return-void
.end method

.method public writeEndObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->closeObject(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    :cond_0
    return-void
.end method

.method public writeFieldId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->writeFieldName(Ljava/lang/String;)V

    return-void
.end method

.method public writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 399
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-void

    .line 402
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_1

    .line 403
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 404
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    return-void

    .line 407
    :cond_1
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object p1

    .line 408
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 409
    sget-object v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne p1, v0, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkPropertyParentPath()V

    :cond_2
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 379
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-void

    .line 382
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_1

    .line 383
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 384
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    return-void

    .line 387
    :cond_1
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object p1

    .line 388
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 389
    sget-object v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne p1, v0, :cond_2

    .line 390
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkPropertyParentPath()V

    :cond_2
    return-void
.end method

.method public writeNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 838
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 839
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 843
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 844
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNull()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 848
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 850
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    return-void
.end method

.method public writeNumber(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 712
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 713
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 717
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 718
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNumber(D)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 722
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 724
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    return-void
.end method

.method public writeNumber(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 733
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 734
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 738
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 739
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNumber(F)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 743
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 745
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    return-void
.end method

.method public writeNumber(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 649
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 650
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 654
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 655
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNumber(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 659
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    return-void
.end method

.method public writeNumber(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 670
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 671
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 675
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 676
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNumber(J)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 680
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 682
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 775
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 776
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 780
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 781
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeRawValue()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 785
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 787
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/lang/String;)V

    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 751
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 754
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 755
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 759
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 760
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNumber(Ljava/math/BigDecimal;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 764
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 766
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 691
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 692
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 696
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 697
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNumber(Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 701
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 703
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    return-void
.end method

.method public writeNumber(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 628
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 629
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 633
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 634
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNumber(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 638
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 640
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(S)V

    return-void
.end method

.method public writeNumber([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 796
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 797
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 801
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 802
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeRawValue()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 806
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 808
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber([CII)V

    return-void
.end method

.method public writeObjectId(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 878
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectId(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeObjectRef(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectRef(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeOmittedField(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeOmittedField(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeRaw(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    :cond_0
    return-void
.end method

.method public writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V

    :cond_0
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public writeRaw([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw([CII)V

    :cond_0
    return-void
.end method

.method public writeRawUTF8String([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRawUTF8String([BII)V

    :cond_0
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRawValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 586
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRawValue(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public writeRawValue([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRawValue([CII)V

    :cond_0
    return-void
.end method

.method public writeStartArray()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 155
    :cond_0
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    .line 156
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 157
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 166
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 167
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 171
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 172
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    goto :goto_0

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    :goto_0
    return-void
.end method

.method public writeStartArray(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 182
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 185
    :cond_0
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    .line 186
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 187
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(I)V

    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_2

    .line 192
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 195
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 196
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_4

    .line 199
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 200
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 201
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(I)V

    goto :goto_0

    .line 203
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    :goto_0
    return-void
.end method

.method public writeStartArray(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 211
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 214
    :cond_0
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    .line 215
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 216
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(Ljava/lang/Object;)V

    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_2

    .line 221
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 224
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 225
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_4

    .line 228
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 229
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 230
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(Ljava/lang/Object;)V

    goto :goto_0

    .line 232
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    :goto_0
    return-void
.end method

.method public writeStartArray(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 240
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 243
    :cond_0
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    .line 244
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 245
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(Ljava/lang/Object;I)V

    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_2

    .line 250
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 253
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 254
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_4

    .line 257
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 258
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 259
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(Ljava/lang/Object;I)V

    goto :goto_0

    .line 261
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object p2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {p1, p2, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    :goto_0
    return-void
.end method

.method public writeStartObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 279
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 282
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 283
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 284
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 293
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v2, :cond_3

    .line 294
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 296
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v2, :cond_4

    .line 297
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 298
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 299
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    goto :goto_0

    .line 301
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    :goto_0
    return-void
.end method

.method public writeStartObject(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 309
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 312
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 313
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 314
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;)V

    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 323
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v2, :cond_3

    .line 324
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 326
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v2, :cond_4

    .line 327
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 328
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 329
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 331
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    :goto_0
    return-void
.end method

.method public writeStartObject(Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 339
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 342
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 343
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 344
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;I)V

    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 353
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v2, :cond_3

    .line 354
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 356
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v2, :cond_4

    .line 357
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 358
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 359
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;I)V

    goto :goto_0

    .line 361
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    :goto_0
    return-void
.end method

.method public writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 475
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 476
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 480
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 481
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 485
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Lcom/fasterxml/jackson/core/SerializableString;)V

    return-void
.end method

.method public writeString(Ljava/io/Reader;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 495
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 496
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 500
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 503
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeString(Ljava/io/Reader;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 507
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/io/Reader;I)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 433
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 437
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 438
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 442
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeString([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 453
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 454
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 455
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 459
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v2, :cond_2

    .line 460
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 464
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString([CII)V

    return-void
.end method

.method public writeTypeId(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeUTF8String([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeUTF8String([BII)V

    :cond_0
    return-void
.end method
