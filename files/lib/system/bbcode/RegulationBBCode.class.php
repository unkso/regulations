<?php namespace wcf\system\bbcode;

use wcf\data\regulation\Regulation;
use wcf\util\StringUtil;

class RegulationBBCode extends AbstractBBCode 
{

	public function getParsedTag(array $openingTag, $content, array $closingTag, BBCodeParser $parser) 
	{
		$content = StringUtil::trim($content);

        $regulation = Regulation::getByIdentifier($content);
        $link = '';

		// Regulation with name $content
		// Get permalink
		
		$html = <<<UNKNOWNSOLDIERS
<blockquote class="quoteBox container containerPadding quoteBoxSimple" cite="$link">
    <header>
        <h3>
            <a href="$link" target="_blank">{$regulation->name}</a>
        </h3>
    </header>
    
    <div>
        {$regulation->description}
    </div>
</blockquote>
UNKNOWNSOLDIERS;

		return $html;
	}
	
}
