var channel = "tluna配信";
var api = "http://api.ustream.tv/json/channel/";
var ustobjId;
var devkey = "78630D6A1C23A2BDE5DC65BE8B4F12E7"

$(function()
{
	var url = api 
		+ channel
		+ "/getInfo?key="
    + devkey
		+ '&callback={callback}';

	// APIを呼んで、JSONPを処理	
	$.getJSONP(url, function(res) {
		var embedTag = res.embedTag;
		
		// embedTag
		var obj = $( embedTag );
		// 属性を変更
		obj.attr('width', '246');
		obj.attr('height', '200');
		// embedタグ体の属性を変更
		obj.children( 'embed' ).attr('width', '246');
		obj.children( 'embed' ).attr('height', '200');

		// blogpartsを挿入する。
		obj.prependTo('#blogparts');
	});
	
	checkOnAir();
	setInterval(checkOnAir, 30000);
}
);

function checkOnAir()
{
	// ステータスを取得する
	var url = api 
		+ channel 
		+ "/getValueOf/status?key="
    + devkey
		+ '&callback={callback}';
		
	$.getJSONP(url, function(res) {
		if(res == "live") { // On Air中
			$('#checkair').text("On Air");
			$('#checkair').css({"color": "red"});
		}
		else { // Off Air
			$('#checkair').text("現在ライブ放送なし");
			$('#checkair').css({"color": "gray"});
		}
	});
}
